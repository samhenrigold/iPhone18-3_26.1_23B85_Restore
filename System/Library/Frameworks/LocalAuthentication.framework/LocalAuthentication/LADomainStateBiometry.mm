@interface LADomainStateBiometry
- (LADomainStateBiometry)initWithResult:(id)result;
- (id)description;
@end

@implementation LADomainStateBiometry

- (LADomainStateBiometry)initWithResult:(id)result
{
  v30 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v28.receiver = self;
  v28.super_class = LADomainStateBiometry;
  v5 = [(LADomainStateBiometry *)&v28 init];
  if (v5)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v8 = [resultCopy objectForKeyedSubscript:*MEMORY[0x1E69AD0D0]];
    v23 = resultCopy;
    v9 = [resultCopy objectForKeyedSubscript:*MEMORY[0x1E69AD0E0]];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = [v10 objectForKeyedSubscript:v15];
          bOOLValue = [v16 BOOLValue];

          if (bOOLValue)
          {
            v5->_biometryType = [v15 integerValue];
            v18 = MEMORY[0x1E69AD258];
            v19 = [v9 objectForKeyedSubscript:v15];
            v20 = [v18 saltHash:v19 withBundleID:bundleIdentifier];

            stateHash = v5->_stateHash;
            v5->_stateHash = v20;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v12);
    }

    resultCopy = v23;
  }

  return v5;
}

- (id)description
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[LADomainStateBiometry biometryType](self, "biometryType")}];
  v7 = [v5 stringWithFormat:@"biometryType: %@", v6];
  v15[0] = v7;
  v8 = MEMORY[0x1E696AEC0];
  stateHash = [(LADomainStateBiometry *)self stateHash];
  v10 = [v8 stringWithFormat:@"stateHash: %@", stateHash];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v12 = [v11 componentsJoinedByString:@" "];;
  v13 = [v3 stringWithFormat:@"<%@ %p %@>", v4, self, v12];;

  return v13;
}

@end