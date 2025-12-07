@interface NSArray(IMJSONSerializableValueProviding)
- (id)im_jsonSerializableValue;
@end

@implementation NSArray(IMJSONSerializableValueProviding)

- (id)im_jsonSerializableValue
{
  v26 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:self])
  {
    selfCopy = self;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(self, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    selfCopy2 = self;
    v5 = [selfCopy2 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v18;
      *&v6 = 138412546;
      v16 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(selfCopy2);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = jsonSerializableValueForValue(v10);
          if (!v11)
          {
            v11 = v10;
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            v14 = _IMStoreLogCategoryDefault();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = v16;
              v22 = v11;
              v23 = 2112;
              v24 = v13;
              _os_log_impl(&dword_1D8CEC000, v14, OS_LOG_TYPE_ERROR, "Object %@ of class %@ isn't JSON serializable", buf, 0x16u);
            }
          }

          [v3 addObject:{v11, v16, v17}];
        }

        v7 = [selfCopy2 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v7);
    }

    selfCopy = [MEMORY[0x1E695DEC8] arrayWithArray:v3];
  }

  return selfCopy;
}

@end