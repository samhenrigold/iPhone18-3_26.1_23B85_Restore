@interface SAHACommandCompleted(HMLogging)
- (id)hm_contentDescription;
- (id)hm_headerDescription;
- (id)hm_shortDescription;
@end

@implementation SAHACommandCompleted(HMLogging)

- (id)hm_contentDescription
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  actionResults = [self actionResults];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(actionResults, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  actionResults2 = [self actionResults];
  v6 = [actionResults2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(actionResults2);
        }

        v10 = MEMORY[0x1E696AEC0];
        hm_shortDescription = [*(*(&v14 + 1) + 8 * i) hm_shortDescription];
        v12 = [v10 stringWithFormat:@"\n\t%@", hm_shortDescription];
        [v4 addObject:v12];
      }

      v7 = [actionResults2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)hm_headerDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7D60];
  commandOutcome = [self commandOutcome];
  appendToShortDescription(string, v3, commandOutcome);

  v5 = *MEMORY[0x1E69C7D58];
  clientValidity = [self clientValidity];
  appendToShortDescription(string, v5, clientValidity);

  v7 = *MEMORY[0x1E69C7D70];
  serverValidity = [self serverValidity];
  appendToShortDescription(string, v7, serverValidity);

  v9 = *MEMORY[0x1E69C7D68];
  homeIdentifier = [self homeIdentifier];
  appendToShortDescription(string, v9, homeIdentifier);

  return string;
}

- (id)hm_shortDescription
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AD60];
  hm_headerDescription = [self hm_headerDescription];
  v4 = [v2 stringWithString:hm_headerDescription];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  actionResults = [self actionResults];
  v6 = [actionResults countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(actionResults);
        }

        hm_shortDescription = [*(*(&v12 + 1) + 8 * i) hm_shortDescription];
        [v4 appendFormat:@"\n\t%@", hm_shortDescription];
      }

      v7 = [actionResults countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end