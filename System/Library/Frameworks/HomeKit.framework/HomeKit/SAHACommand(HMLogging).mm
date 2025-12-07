@interface SAHACommand(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHACommand(HMLogging)

- (id)hm_shortDescription
{
  v42 = *MEMORY[0x1E69E9840];
  string = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7D78];
  filter = [self filter];
  hm_shortDescription = [filter hm_shortDescription];
  [string appendFormat:@"\t%@: %@", v3, hm_shortDescription];

  v6 = *MEMORY[0x1E69C7D50];
  commandTimeout = [self commandTimeout];
  [string appendFormat:@"\n\t%@: %@", v6, commandTimeout];

  v8 = *MEMORY[0x1E69C7D90];
  serverValidity = [self serverValidity];
  appendToShortDescription(string, v8, serverValidity);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  selfCopy = self;
  actionRequests = [self actionRequests];
  v11 = [actionRequests countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v37;
    v15 = *MEMORY[0x1E69C7D40];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(actionRequests);
        }

        v17 = *(*(&v36 + 1) + 8 * i);
        if (v13)
        {
          [string appendFormat:@"\n\t\t\t[%tu]", v13, v29];
        }

        else
        {
          [string appendFormat:@"\n\t%@: [%tu]", v15, 0];
        }

        hm_shortDescription2 = [v17 hm_shortDescription];
        [string appendFormat:@"\n\t\t%@", hm_shortDescription2];

        ++v13;
      }

      v12 = [actionRequests countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v12);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  actions = [selfCopy actions];
  v20 = [actions countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v33;
    v24 = *MEMORY[0x1E69C7D48];
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(actions);
        }

        hm_shortDescription3 = [*(*(&v32 + 1) + 8 * j) hm_shortDescription];
        v27 = hm_shortDescription3;
        if (v22)
        {
          [string appendFormat:@"\n\t\t[%tu] %@", v22, hm_shortDescription3, v30];
        }

        else
        {
          [string appendFormat:@"\n\t%@: [%tu] %@", v24, 0, hm_shortDescription3];
        }

        ++v22;
      }

      v21 = [actions countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v21);
  }

  return string;
}

@end