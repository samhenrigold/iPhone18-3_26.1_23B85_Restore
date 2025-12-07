@interface AXCategoricalScale
- (AXCategoricalScale)init;
- (AXCategoricalScale)initWithDomain:(id)domain;
@end

@implementation AXCategoricalScale

- (AXCategoricalScale)init
{
  v3 = AXAudioGraphLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(AXCategoricalScale *)v3 init];
  }

  return [(AXCategoricalScale *)self initWithDomain:MEMORY[0x1E695E0F0]];
}

- (AXCategoricalScale)initWithDomain:(id)domain
{
  v21 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v19.receiver = self;
  v19.super_class = AXCategoricalScale;
  v5 = [(AXCategoricalScale *)&v19 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = domainCopy;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [AXDataPointValue valueWithCategory:*(*(&v15 + 1) + 8 * v11), v15];
          [array addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = [array copy];
    [(AXScale *)v5 setDomain:v13];
  }

  return v5;
}

@end