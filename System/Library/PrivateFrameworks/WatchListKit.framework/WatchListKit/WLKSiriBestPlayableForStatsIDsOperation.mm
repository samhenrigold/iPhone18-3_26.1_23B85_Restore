@interface WLKSiriBestPlayableForStatsIDsOperation
- (WLKSiriBestPlayableForStatsIDsOperation)initWithStatsIDs:(id)ds caller:(id)caller;
- (void)processResponse;
@end

@implementation WLKSiriBestPlayableForStatsIDsOperation

- (WLKSiriBestPlayableForStatsIDsOperation)initWithStatsIDs:(id)ds caller:(id)caller
{
  v36 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  callerCopy = caller;
  v7 = MEMORY[0x277CBE660];
  if (!dsCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The statsIDs parameter must not be nil."];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*v7 format:@"The statsIDs parameter must be an array."];
  }

  if (![dsCopy count])
  {
    [MEMORY[0x277CBEAD8] raise:*v7 format:@"The statsIDs parameter must not be an empty array."];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v12 = *v7;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [MEMORY[0x277CBEAD8] raise:v12 format:@"The statsIDs values must all be strings."];
        }

        ++v13;
      }

      while (v10 != v13);
      v10 = [v8 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v10);
  }

  v14 = MEMORY[0x277CCAC98];
  v15 = NSStringFromSelector(sel_self);
  v16 = [v14 sortDescriptorWithKey:v15 ascending:1];

  v34 = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v18 = [v8 sortedArrayUsingDescriptors:v17];

  v32 = @"ids";
  v19 = [v18 componentsJoinedByString:{@", "}];
  v33 = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v21 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"siri/bestPlayableForStatsIds" queryParameters:v20 httpMethod:0 caller:callerCopy];

  v27.receiver = self;
  v27.super_class = WLKSiriBestPlayableForStatsIDsOperation;
  v22 = [(WLKUTSNetworkRequestOperation *)&v27 initWithRequestProperties:v21];
  if (v22)
  {
    v23 = [v8 copy];
    statsIDs = v22->_statsIDs;
    v22->_statsIDs = v23;
  }

  return v22;
}

- (void)processResponse
{
  v6 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v6 setObjectClass:objc_opt_class()];
  data = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v6 processResponseData:data error:0];
  response = self->_response;
  self->_response = v4;
}

@end