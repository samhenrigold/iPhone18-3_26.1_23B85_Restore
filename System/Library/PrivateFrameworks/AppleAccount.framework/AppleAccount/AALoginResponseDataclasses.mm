@interface AALoginResponseDataclasses
- (AALoginResponseDataclasses)initWithiCloudServiceData:(id)data;
@end

@implementation AALoginResponseDataclasses

- (AALoginResponseDataclasses)initWithiCloudServiceData:(id)data
{
  v24 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = AALoginResponseDataclasses;
  v5 = [(AALoginResponseDataclasses *)&v22 init];
  if (v5)
  {
    v6 = [dataCopy objectForKey:@"availableFeatures"];
    provisionedDataclasses = v5->_provisionedDataclasses;
    v5->_provisionedDataclasses = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [dataCopy allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          if ([v14 hasPrefix:@"com.apple.Dataclass"])
          {
            v15 = [dataCopy objectForKey:v14];
            if (v15)
            {
              [(NSDictionary *)v8 setObject:v15 forKey:v14];
            }
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v11);
    }

    dataclassProperties = v5->_dataclassProperties;
    v5->_dataclassProperties = v8;
  }

  return v5;
}

@end