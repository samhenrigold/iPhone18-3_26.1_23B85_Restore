@interface CCSetDiscoveryResponse
+ (id)setDiscoveryResponseFromPeerToPeerMessage:(id)message discoveredSets:(id)sets responseOptions:(unsigned __int16)options;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation CCSetDiscoveryResponse

+ (id)setDiscoveryResponseFromPeerToPeerMessage:(id)message discoveredSets:(id)sets responseOptions:(unsigned __int16)options
{
  optionsCopy = options;
  setsCopy = sets;
  messageCopy = message;
  v9 = [CCSetDiscoveryResponse alloc];
  syncReason = [messageCopy syncReason];
  senderDeviceUUID = [messageCopy senderDeviceUUID];
  protocolVersion = [messageCopy protocolVersion];
  [messageCopy walltime];
  v14 = v13;

  v15 = [(CCPeerToPeerMessage *)v9 initWithSyncReason:syncReason senderDeviceUUID:senderDeviceUUID protocolVersion:protocolVersion wallTime:v14];
  [(CCSetDiscoveryResponse *)v15 setDiscoveredSets:setsCopy];

  [(CCSetDiscoveryResponse *)v15 setResponseOptions:optionsCopy];

  return v15;
}

- (id)initFromDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = CCSetDiscoveryResponse;
  v5 = [(CCPeerToPeerMessage *)&v26 initFromDictionary:dictionaryCopy];
  v6 = v5;
  if (v5)
  {
    v20 = v5;
    v21 = dictionaryCopy;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"discoveredSets"];
    v8 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * v13);
          v15 = [[CCDiscoveredSet alloc] initFromDictionary:v14];
          if (v15)
          {
            [v8 addObject:v15];
          }

          else
          {
            v16 = __biome_log_for_category();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v28 = v14;
              _os_log_error_impl(&dword_1DA444000, v16, OS_LOG_TYPE_ERROR, "Failed to decode opack encoded discovered set %@", buf, 0xCu);
            }
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v11);
    }

    v6 = v20;
    v17 = *(v20 + 6);
    *(v20 + 6) = v8;

    dictionaryCopy = v21;
    v18 = [v21 objectForKeyedSubscript:@"setDiscoveryResponseOptions"];
    *(v20 + 20) = [v18 unsignedIntValue];
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_discoveredSets;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  v20 = @"discoveredSets";
  v21 = v3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v11 = [v10 mutableCopy];

  if (self->_responseOptions)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
    [v11 setObject:v12 forKey:@"setDiscoveryResponseOptions"];
  }

  v15.receiver = self;
  v15.super_class = CCSetDiscoveryResponse;
  dictionaryRepresentation2 = [(CCPeerToPeerMessage *)&v15 dictionaryRepresentation];
  [v11 addEntriesFromDictionary:dictionaryRepresentation2];

  return v11;
}

@end