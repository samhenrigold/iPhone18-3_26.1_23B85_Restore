@interface WFPropertyListJSONAdapter
- (id)serializablePropertyKeys:(id)keys forModel:(id)model;
@end

@implementation WFPropertyListJSONAdapter

- (id)serializablePropertyKeys:(id)keys forModel:(id)model
{
  v21 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  modelCopy = model;
  v7 = [keysCopy mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = keysCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [modelCopy valueForKey:{v13, v16}];

        if (!v14)
        {
          [v7 removeObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v7;
}

@end