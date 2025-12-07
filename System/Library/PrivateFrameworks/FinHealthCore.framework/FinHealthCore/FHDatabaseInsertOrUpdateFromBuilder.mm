@interface FHDatabaseInsertOrUpdateFromBuilder
+ (id)initWithBuilder:(id)builder;
- (id)_init:(id)_init;
@end

@implementation FHDatabaseInsertOrUpdateFromBuilder

+ (id)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_opt_new();
  builderCopy[2](builderCopy, v4);

  v5 = [[FHDatabaseInsertOrUpdateFromBuilder alloc] _init:v4];

  return v5;
}

- (id)_init:(id)_init
{
  v21 = *MEMORY[0x277D85DE8];
  _initCopy = _init;
  v19.receiver = self;
  v19.super_class = FHDatabaseInsertOrUpdateFromBuilder;
  v5 = [(FHDatabaseInsertOrUpdateFromBuilder *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    dynamicFieldValuePairList = [_initCopy dynamicFieldValuePairList];
    v8 = [dynamicFieldValuePairList countByEnumeratingWithState:&v15 objects:v20 count:16];
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
            objc_enumerationMutation(dynamicFieldValuePairList);
          }

          [v6 addObject:*(*(&v15 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [dynamicFieldValuePairList countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v9);
    }

    v12 = [v6 copy];
    fieldValuePairList = v5->_fieldValuePairList;
    v5->_fieldValuePairList = v12;
  }

  return v5;
}

@end