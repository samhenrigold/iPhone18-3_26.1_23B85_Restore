@interface WBSPasswordBreachQueuedPassword
- (NSUUID)uuid;
- (WBSPasswordBreachQueuedPassword)initWithCredentials:(id)credentials context:(id)context;
- (id)initFakePasswordWithContext:(id)context;
@end

@implementation WBSPasswordBreachQueuedPassword

- (id)initFakePasswordWithContext:(id)context
{
  v28[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v27.receiver = self;
  v27.super_class = WBSPasswordBreachQueuedPassword;
  v5 = [(WBSPasswordBreachQueuedPassword *)&v27 init];
  if (v5)
  {
    data = [MEMORY[0x1E695DEF0] data];
    v28[0] = data;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    persistentIdentifiers = v5->_persistentIdentifiers;
    v5->_persistentIdentifiers = v7;

    cryptographicOperations = [contextCopy cryptographicOperations];
    generateFakeEncodedPasswordForLowFrequencyBucket = [cryptographicOperations generateFakeEncodedPasswordForLowFrequencyBucket];
    if (generateFakeEncodedPasswordForLowFrequencyBucket)
    {
      v12 = [MEMORY[0x1E695DF70] arrayWithObject:generateFakeEncodedPasswordForLowFrequencyBucket];
      bucketIdentifierAndHashStack = v5->_bucketIdentifierAndHashStack;
      v5->_bucketIdentifierAndHashStack = v12;

      generateFakeEncodedPasswordForHighFrequencyBucket = [cryptographicOperations generateFakeEncodedPasswordForHighFrequencyBucket];
      highFrequencyEncodedPassword = v5->_highFrequencyEncodedPassword;
      v5->_highFrequencyEncodedPassword = generateFakeEncodedPasswordForHighFrequencyBucket;

      if (v5->_highFrequencyEncodedPassword)
      {
        configuration = [contextCopy configuration];
        verboseSensitiveLoggingEnabled = [configuration verboseSensitiveLoggingEnabled];

        if (verboseSensitiveLoggingEnabled)
        {
          v22 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v20, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [(WBSPasswordBreachQueuedPassword *)v22 initFakePasswordWithContext:v5];
          }
        }

        v23 = v5;
        goto LABEL_14;
      }

      v25 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v16, v17);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachQueuedPassword initFakePasswordWithContext:v25];
      }
    }

    else
    {
      v24 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v10);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [WBSPasswordBreachQueuedPassword initFakePasswordWithContext:v24];
      }
    }

    v23 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v23 = 0;
LABEL_15:

  return v23;
}

- (WBSPasswordBreachQueuedPassword)initWithCredentials:(id)credentials context:(id)context
{
  v40 = *MEMORY[0x1E69E9840];
  credentialsCopy = credentials;
  contextCopy = context;
  v38.receiver = self;
  v38.super_class = WBSPasswordBreachQueuedPassword;
  v8 = [(WBSPasswordBreachQueuedPassword *)&v38 init];
  if (v8)
  {
    cryptographicOperations = [contextCopy cryptographicOperations];
    v9 = [credentialsCopy count];
    firstObject = [credentialsCopy firstObject];
    password = [firstObject password];

    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v13 = credentialsCopy;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          persistentIdentifier = [*(*(&v34 + 1) + 8 * i) persistentIdentifier];
          [(NSArray *)v12 addObject:persistentIdentifier];
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v15);
    }

    persistentIdentifiers = v8->_persistentIdentifiers;
    v8->_persistentIdentifiers = v12;
    v20 = v12;

    v21 = MEMORY[0x1E695DF70];
    v22 = [cryptographicOperations encodePasswordForLowFrequencyBucket:password];
    v23 = [v21 arrayWithObject:v22];
    bucketIdentifierAndHashStack = v8->_bucketIdentifierAndHashStack;
    v8->_bucketIdentifierAndHashStack = v23;

    v25 = [cryptographicOperations encodePasswordForHighFrequencyBucket:password];
    highFrequencyEncodedPassword = v8->_highFrequencyEncodedPassword;
    v8->_highFrequencyEncodedPassword = v25;

    configuration = [contextCopy configuration];
    LODWORD(v21) = [configuration verboseSensitiveLoggingEnabled];

    if (v21)
    {
      v30 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v28, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [(WBSPasswordBreachQueuedPassword *)password initWithCredentials:v30 context:v8];
      }
    }

    v31 = v8;
  }

  return v8;
}

- (NSUUID)uuid
{
  uuid = self->_uuid;
  if (!uuid)
  {
    v4 = objc_alloc(MEMORY[0x1E696AFB0]);
    highFrequencyEncodedPasswordData = [(WBSPasswordBreachQueuedPassword *)self highFrequencyEncodedPasswordData];
    v6 = [v4 initWithUUIDBytes:{objc_msgSend(highFrequencyEncodedPasswordData, "bytes")}];
    v7 = self->_uuid;
    self->_uuid = v6;

    uuid = self->_uuid;
  }

  return uuid;
}

- (void)initFakePasswordWithContext:(void *)a1 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 uuid];
  v5 = 138739971;
  v6 = v4;
  _os_log_debug_impl(&dword_1B8447000, v3, OS_LOG_TYPE_DEBUG, "Generated password with UUID %{sensitive}@", &v5, 0xCu);
}

- (void)initWithCredentials:(void *)a3 context:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 uuid];
  v7 = 138740227;
  v8 = a1;
  v9 = 2117;
  v10 = v6;
  _os_log_debug_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEBUG, "Enqueued password %{sensitive}@ with UUID %{sensitive}@", &v7, 0x16u);
}

@end