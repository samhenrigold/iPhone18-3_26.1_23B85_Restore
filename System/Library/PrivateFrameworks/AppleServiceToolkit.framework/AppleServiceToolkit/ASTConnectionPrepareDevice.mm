@interface ASTConnectionPrepareDevice
- (ASTConnectionPrepareDevice)initWithIdentities:(id)identities;
@end

@implementation ASTConnectionPrepareDevice

- (ASTConnectionPrepareDevice)initWithIdentities:(id)identities
{
  v30 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  v26.receiver = self;
  v26.super_class = ASTConnectionPrepareDevice;
  v5 = [(ASTMaterializedConnection *)&v26 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = identitiesCopy;
    v7 = identitiesCopy;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * v11);
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          json = [v12 json];
          [dictionary setObject:json forKeyedSubscript:@"deviceIdentifiers"];

          [v6 addObject:dictionary];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v9);
    }

    v27[0] = @"devices";
    v27[1] = @"actions";
    v28[0] = v6;
    v28[1] = &unk_2852D5EB0;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v21 = 0;
    v16 = [ASTEncodingUtilities jsonSerializeObject:v15 error:&v21];
    v17 = v21;

    if (v16)
    {
      [(ASTMaterializedConnection *)v5 addBody:v16 gzip:+[ASTConnectionUtilities isGzipEnabled]];
    }

    else
    {
      v18 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [ASTConnectionSession initWithIdentities:v17 ticket:v18 requestQueuedSuiteInfo:?];
      }
    }

    identitiesCopy = v20;
  }

  return v5;
}

@end