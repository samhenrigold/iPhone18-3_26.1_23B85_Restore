@interface NSDictionary(ClassChecking)
- (id)axssDecodeArrayOfClass:()ClassChecking forKey:;
- (id)axssDecodeObjectOfClass:()ClassChecking forKey:;
- (uint64_t)axssDecodeBoolForKey:()ClassChecking;
@end

@implementation NSDictionary(ClassChecking)

- (id)axssDecodeObjectOfClass:()ClassChecking forKey:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [self objectForKeyedSubscript:v6];
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412802;
      v13 = a3;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = objc_opt_class();
      v11 = v17;
      _os_log_error_impl(&dword_1C0E8A000, v9, OS_LOG_TYPE_ERROR, "Tried to decode object of class %@ for key %@, but was class %@ instead", &v12, 0x20u);
    }

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (uint64_t)axssDecodeBoolForKey:()ClassChecking
{
  v4 = a3;
  v5 = [self objectForKeyedSubscript:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = AXSSLogForCategory(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(NSDictionary(ClassChecking) *)v4 axssDecodeBoolForKey:v5];
    }

    bOOLValue = 0;
  }

  else
  {
    bOOLValue = [v5 BOOLValue];
  }

  return bOOLValue;
}

- (id)axssDecodeArrayOfClass:()ClassChecking forKey:
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [self objectForKeyedSubscript:v6];
  if (!v7)
  {
LABEL_12:
    v13 = v7;
    goto LABEL_20;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v15 = AXSSLogForCategory(1);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v17 = objc_opt_class();
              *buf = 138412802;
              v24 = a3;
              v25 = 2112;
              v26 = v6;
              v27 = 2112;
              v28 = v17;
              v18 = v17;
              _os_log_error_impl(&dword_1C0E8A000, v15, OS_LOG_TYPE_ERROR, "Tried to decode array of class %@ for key %@, but objects were of class %@ instead", buf, 0x20u);
            }

            goto LABEL_19;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_12;
  }

  v14 = AXSSLogForCategory(1);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [NSDictionary(ClassChecking) axssDecodeArrayOfClass:v6 forKey:v7];
  }

LABEL_19:
  v13 = 0;
LABEL_20:

  return v13;
}

- (void)axssDecodeBoolForKey:()ClassChecking .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  OUTLINED_FUNCTION_3_0(&dword_1C0E8A000, v4, v5, "Tried to decode NSNumber for key %@, but was class %@ instead", v6, v7, v8, v9);
}

- (void)axssDecodeArrayOfClass:()ClassChecking forKey:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  OUTLINED_FUNCTION_3_0(&dword_1C0E8A000, v4, v5, "Tried to decode array for key %@, but was class %@ instead", v6, v7, v8, v9);
}

@end