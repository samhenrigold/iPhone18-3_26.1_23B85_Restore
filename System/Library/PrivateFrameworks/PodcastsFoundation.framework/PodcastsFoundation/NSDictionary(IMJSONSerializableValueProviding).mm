@interface NSDictionary(IMJSONSerializableValueProviding)
- (id)im_jsonSerializableValue;
@end

@implementation NSDictionary(IMJSONSerializableValueProviding)

- (id)im_jsonSerializableValue
{
  selfCopy = self;
  v34 = *MEMORY[0x1E69E9840];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:self])
  {
    v2 = selfCopy;
  }

  else
  {
    allKeys = [selfCopy allKeys];
    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(allKeys, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v4 = allKeys;
    v5 = [v4 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      v8 = 0x1E696A000uLL;
      v21 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = [selfCopy objectForKey:v10];
            v12 = jsonSerializableValueForValue(v11);
            if (v12)
            {
              [v22 setObject:v12 forKey:v10];
            }

            else
            {
              v14 = v8;
              v15 = v4;
              v16 = selfCopy;
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              v19 = _IMStoreLogCategoryDefault();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v28 = v11;
                v29 = 2112;
                v30 = v18;
                v31 = 2112;
                v32 = v10;
                _os_log_impl(&dword_1D8CEC000, v19, OS_LOG_TYPE_ERROR, "Object %@ of class %@ for key %@ isn't JSON serializable", buf, 0x20u);
              }

              selfCopy = v16;
              v4 = v15;
              v8 = v14;
              v7 = v21;
            }
          }

          else
          {
            v13 = objc_opt_class();
            v11 = NSStringFromClass(v13);
            v12 = _IMStoreLogCategoryDefault();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v28 = v10;
              v29 = 2112;
              v30 = v11;
              _os_log_impl(&dword_1D8CEC000, v12, OS_LOG_TYPE_ERROR, "Non-string key %@ class %@ isn't JSON serializable", buf, 0x16u);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v6);
    }

    v2 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v22];
  }

  return v2;
}

@end