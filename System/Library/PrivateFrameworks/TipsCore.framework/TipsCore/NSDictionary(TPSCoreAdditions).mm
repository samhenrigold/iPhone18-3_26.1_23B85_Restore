@interface NSDictionary(TPSCoreAdditions)
- (double)TPSSafeDoubleForKey:()TPSCoreAdditions;
- (float)TPSSafeFloatForKey:()TPSCoreAdditions;
- (id)TPSSafeArrayForKey:()TPSCoreAdditions;
- (id)TPSSafeDictionaryForKey:()TPSCoreAdditions;
- (id)TPSSafeNumberForKey:()TPSCoreAdditions;
- (id)TPSSafeObjectForKey:()TPSCoreAdditions;
- (id)TPSSafeStringForKey:()TPSCoreAdditions;
- (uint64_t)TPSSafeBoolForKey:()TPSCoreAdditions;
- (uint64_t)TPSSafeIntForKey:()TPSCoreAdditions;
- (uint64_t)TPSSafeIntegerForKey:()TPSCoreAdditions;
- (uint64_t)TPSSafeUIntegerForKey:()TPSCoreAdditions;
@end

@implementation NSDictionary(TPSCoreAdditions)

- (id)TPSSafeObjectForKey:()TPSCoreAdditions
{
  v1 = [self objectForKeyedSubscript:?];
  if (v1 == *MEMORY[0x1E695E738])
  {

    v1 = 0;
  }

  return v1;
}

- (id)TPSSafeDictionaryForKey:()TPSCoreAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self objectForKeyedSubscript:v4];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = v6;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[TPSLogger default];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138413058;
        v12 = v5;
        v13 = 2112;
        v14 = objc_opt_class();
        v15 = 2112;
        v16 = v7;
        v17 = 2112;
        v18 = v4;
        v9 = v14;
        _os_log_impl(&dword_1C00A7000, v8, OS_LOG_TYPE_INFO, "Unexpected value: %@ with class %@. Expected type: %@ for key %@", &v11, 0x2Au);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)TPSSafeArrayForKey:()TPSCoreAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self objectForKeyedSubscript:v4];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = v6;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[TPSLogger default];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138413058;
        v12 = v5;
        v13 = 2112;
        v14 = objc_opt_class();
        v15 = 2112;
        v16 = v7;
        v17 = 2112;
        v18 = v4;
        v9 = v14;
        _os_log_impl(&dword_1C00A7000, v8, OS_LOG_TYPE_INFO, "Unexpected value: %@ with class %@. Expected type: %@ for key %@", &v11, 0x2Au);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)TPSSafeStringForKey:()TPSCoreAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self objectForKeyedSubscript:v4];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = v6;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[TPSLogger default];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138413058;
        v12 = v5;
        v13 = 2112;
        v14 = objc_opt_class();
        v15 = 2112;
        v16 = v7;
        v17 = 2112;
        v18 = v4;
        v9 = v14;
        _os_log_impl(&dword_1C00A7000, v8, OS_LOG_TYPE_INFO, "Unexpected value: %@ with class %@. Expected type: %@ for key %@", &v11, 0x2Au);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)TPSSafeNumberForKey:()TPSCoreAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [self objectForKeyedSubscript:v4];
  v6 = objc_opt_class();
  if (v5)
  {
    v7 = v6;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = +[TPSLogger default];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 138413058;
        v12 = v5;
        v13 = 2112;
        v14 = objc_opt_class();
        v15 = 2112;
        v16 = v7;
        v17 = 2112;
        v18 = v4;
        v9 = v14;
        _os_log_impl(&dword_1C00A7000, v8, OS_LOG_TYPE_INFO, "Unexpected value: %@ with class %@. Expected type: %@ for key %@", &v11, 0x2Au);
      }

      v5 = 0;
    }
  }

  return v5;
}

- (uint64_t)TPSSafeIntegerForKey:()TPSCoreAdditions
{
  v1 = [self TPSSafeObjectForKey:?];
  integerValue = [v1 integerValue];

  return integerValue;
}

- (uint64_t)TPSSafeUIntegerForKey:()TPSCoreAdditions
{
  v1 = [self TPSSafeObjectForKey:?];
  unsignedIntegerValue = [v1 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (uint64_t)TPSSafeIntForKey:()TPSCoreAdditions
{
  v1 = [self TPSSafeObjectForKey:?];
  intValue = [v1 intValue];

  return intValue;
}

- (double)TPSSafeDoubleForKey:()TPSCoreAdditions
{
  v1 = [self TPSSafeObjectForKey:?];
  [v1 doubleValue];
  v3 = v2;

  return v3;
}

- (float)TPSSafeFloatForKey:()TPSCoreAdditions
{
  v1 = [self TPSSafeObjectForKey:?];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (uint64_t)TPSSafeBoolForKey:()TPSCoreAdditions
{
  v1 = [self TPSSafeObjectForKey:?];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

@end