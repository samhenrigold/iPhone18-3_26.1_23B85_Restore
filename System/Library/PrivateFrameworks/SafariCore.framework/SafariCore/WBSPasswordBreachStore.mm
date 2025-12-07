@interface WBSPasswordBreachStore
+ (BOOL)_readAndValidatePersistentIdentifierCanaryWithPersistentIdentifier:(id)identifier expectedValue:(id)value;
+ (id)_createPersistentIdentifierCanary;
+ (void)_createPersistentIdentifierCanary;
- (WBSPasswordBreachStore)initWithBackingStoreURL:(id)l;
- (unint64_t)rampIdentifier;
- (void)setRampIdentifier:(unint64_t)identifier;
@end

@implementation WBSPasswordBreachStore

- (WBSPasswordBreachStore)initWithBackingStoreURL:(id)l
{
  v19[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v17.receiver = self;
  v17.super_class = WBSPasswordBreachStore;
  v5 = [(WBSPasswordBreachStore *)&v17 init];
  if (v5)
  {
    v6 = [WBSPersistentPropertyListStore alloc];
    v18 = *MEMORY[0x1E695DB80];
    v19[0] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v8 = [(WBSPersistentPropertyListStore *)v6 initWithBackingStoreURL:lCopy fileResourceValues:v7];
    store = v5->_store;
    v5->_store = v8;

    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke;
    v15 = &unk_1E7CF3408;
    v16 = lCopy;
    [(WBSPersistentPropertyListStore *)v5->_store setCreateEmptyStoreHandler:&v12];
    [(WBSPersistentPropertyListStore *)v5->_store setValidateLoadedStoreHandler:&__block_literal_global_44, v12, v13, v14, v15];
    v10 = v5;
  }

  return v5;
}

id __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = @"Version";
  v10[0] = &unk_1F308E3C0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v3 = [v2 mutableCopy];

  if (*(a1 + 32))
  {
    v4 = +[WBSPasswordBreachStore _createPersistentIdentifierCanary];
    v5 = v4;
    if (!v4)
    {
      goto LABEL_5;
    }

    v6 = [v4 first];
    [v3 setObject:v6 forKeyedSubscript:@"KeychainPersistentIdentifierCanaryPersistentIdentifier"];

    v7 = [v5 second];
    [v3 setObject:v7 forKeyedSubscript:@"KeychainPersistentIdentifierCanaryValue"];
  }

  v5 = v3;
LABEL_5:

  return v5;
}

id __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke_32(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 safari_numberForKey:@"Version"];
  v4 = [v3 unsignedIntegerValue];

  if (v4 == 1)
  {
    v7 = [v2 safari_dataForKey:@"KeychainPersistentIdentifierCanaryPersistentIdentifier"];
    if (![v7 length])
    {
      v17 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke_32_cold_4();
      }

      v15 = 0;
      goto LABEL_20;
    }

    v9 = [v2 safari_stringForKey:@"KeychainPersistentIdentifierCanaryValue"];
    if ([v9 length])
    {
      v11 = [WBSPasswordBreachStore _readAndValidatePersistentIdentifierCanaryWithPersistentIdentifier:v7 expectedValue:v9];
      if (v11)
      {
        v13 = [v2 valueForKey:@"PasswordEvaluationResults"];

        if (v13)
        {
          v14 = [v2 mutableCopy];
          [v14 removeObjectForKey:@"PasswordEvaluationResults"];

          v2 = v14;
        }

        v2 = v2;
        v15 = v2;
        goto LABEL_19;
      }

      v19 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v11, v12);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke_32_cold_2();
      }
    }

    else
    {
      v18 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v10);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke_32_cold_3();
      }
    }

    v15 = 0;
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v16 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v5, v6);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke_32_cold_1(v4, v16);
  }

  v15 = 0;
LABEL_21:

  return v15;
}

- (unint64_t)rampIdentifier
{
  v2 = [(WBSPersistentPropertyListStore *)self->_store numberForKey:@"RampIdentifier"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setRampIdentifier:(unint64_t)identifier
{
  store = self->_store;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:identifier];
  [(WBSPersistentPropertyListStore *)store setObject:v4 forKey:@"RampIdentifier"];
}

+ (id)_createPersistentIdentifierCanary
{
  v49[6] = *MEMORY[0x1E69E9840];
  error = 0;
  v2 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697ABE8], 0, &error);
  if (v2)
  {
    v4 = v2;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v7 = *MEMORY[0x1E697AFF8];
    v8 = *MEMORY[0x1E697B008];
    v9 = *MEMORY[0x1E697AE88];
    v48[0] = *MEMORY[0x1E697AFF8];
    v48[1] = v9;
    v49[0] = v8;
    v49[1] = @"KeychainPersistentIdentifierCanaryPersistentIdentifier";
    v10 = *MEMORY[0x1E697B3C0];
    v48[2] = *MEMORY[0x1E697B3C0];
    v41 = uUIDString;
    v11 = [(__CFError *)uUIDString dataUsingEncoding:4];
    v12 = *MEMORY[0x1E697B320];
    v13 = *MEMORY[0x1E695E4D0];
    v49[2] = v11;
    v49[3] = v13;
    v14 = *MEMORY[0x1E697ABC8];
    v40 = v12;
    v48[3] = v12;
    v48[4] = v14;
    v15 = *MEMORY[0x1E697ABD0];
    v48[5] = *MEMORY[0x1E697ABD0];
    v49[4] = v4;
    v49[5] = @"com.apple.cfnetwork";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:6];

    result = 0;
    v17 = SecItemAdd(v16, &result);
    if (v17)
    {
      v19 = v17;
      if (v17 != -25299)
      {
        v29 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v17, v18);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          +[(WBSPasswordBreachStore *)v19];
        }

        v28 = 0;
        v21 = v41;
        goto LABEL_25;
      }

      v39 = v16;
      v46[0] = v7;
      v46[1] = v9;
      v47[0] = v8;
      v47[1] = @"KeychainPersistentIdentifierCanaryPersistentIdentifier";
      v46[2] = v15;
      v47[2] = @"com.apple.cfnetwork";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];
      v44 = v10;
      v21 = v41;
      v22 = [(__CFError *)v41 dataUsingEncoding:4];
      v45 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];

      v24 = SecItemUpdate(v20, v23);
      if (v24)
      {
        v26 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v24, v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          +[WBSPasswordBreachStore _createPersistentIdentifierCanary];
        }

LABEL_17:

        v28 = 0;
        v16 = v39;
LABEL_25:

        goto LABEL_26;
      }

      v30 = [(__CFDictionary *)v20 mutableCopy];
      [v30 setObject:v13 forKeyedSubscript:v40];
      v31 = SecItemCopyMatching(v30, &result);
      if (v31)
      {
        v33 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v31, v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          +[WBSPasswordBreachStore _createPersistentIdentifierCanary];
        }

        goto LABEL_17;
      }

      v16 = v39;
    }

    v34 = result;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v21 = v41;
      v28 = [[WBSPair alloc] initWithFirst:v34 second:v41];
    }

    else
    {
      v37 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(isKindOfClass, v36);
      v21 = v41;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        +[WBSPasswordBreachStore _createPersistentIdentifierCanary];
      }

      v28 = 0;
    }

    goto LABEL_25;
  }

  v21 = error;
  v27 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v3);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    +[(WBSPasswordBreachStore *)v27];
  }

  v28 = 0;
LABEL_26:

  return v28;
}

+ (BOOL)_readAndValidatePersistentIdentifierCanaryWithPersistentIdentifier:(id)identifier expectedValue:(id)value
{
  v27[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  valueCopy = value;
  v7 = *MEMORY[0x1E697B3C8];
  v26[0] = *MEMORY[0x1E697AFF8];
  v26[1] = v7;
  v27[0] = *MEMORY[0x1E697B008];
  v27[1] = identifierCopy;
  v26[2] = *MEMORY[0x1E697B318];
  v27[2] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
  v23[0] = 0;
  v9 = SecItemCopyMatching(v8, v23);
  if (v9)
  {
    v11 = v9;
    v12 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v25 = v11;
      _os_log_impl(&dword_1B8447000, v12, OS_LOG_TYPE_DEFAULT, "Could not find canary in keychain: %d", buf, 8u);
    }

LABEL_10:

    v16 = 0;
LABEL_11:
    v19 = 0;
    goto LABEL_12;
  }

  v13 = v23[0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v20 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(isKindOfClass, v15);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v20, OS_LOG_TYPE_DEFAULT, "Canary item in keychain had unexpected type", buf, 2u);
    }

    goto LABEL_10;
  }

  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v13 encoding:4];

  v17 = [v16 isEqualToString:valueCopy];
  if ((v17 & 1) == 0)
  {
    v22 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v17, v18);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23[0]) = 0;
      _os_log_impl(&dword_1B8447000, v22, OS_LOG_TYPE_DEFAULT, "Canary item in keychain did not match plist value.", v23, 2u);
    }

    goto LABEL_11;
  }

  v19 = 1;
LABEL_12:

  return v19;
}

void __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke_32_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134349056;
  v3 = a1;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Unexpected store version %{public}lu, resetting store.", &v2, 0xCu);
}

+ (void)_createPersistentIdentifierCanary
{
  v7 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = safari_privacyPreservingDescription;
  _os_log_error_impl(&dword_1B8447000, selfCopy, OS_LOG_TYPE_ERROR, "Could not create same device access ref: %{public}@", &v5, 0xCu);
}

@end