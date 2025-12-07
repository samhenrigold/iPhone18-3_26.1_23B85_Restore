@interface BKDefaults
+ (BOOL)setNumber:(id)number forKey:(id)key withError:(id *)error;
+ (BOOL)setString:(id)string forKey:(id)key withError:(id *)error;
+ (id)device;
+ (id)numberForKey:(id)key withError:(id *)error;
+ (id)stringForKey:(id)key withError:(id *)error;
@end

@implementation BKDefaults

+ (id)device
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[BKDeviceManager availableDevices];
  firstObject = [v2 firstObject];
  if (firstObject)
  {
    v9 = 0;
    v4 = [BKDevice deviceWithDescriptor:firstObject error:&v9];
    v5 = v9;
    if (!v4)
    {
      v6 = (__osLog ? __osLog : MEMORY[0x1E69E9C10]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v11 = firstObject;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_1C82AD000, v6, OS_LOG_TYPE_ERROR, "Cannot instantiate device with descriptor %@, error %@\n", buf, 0x16u);
      }
    }
  }

  else
  {
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_ERROR, "Cannot find any biometric device\n", buf, 2u);
    }

    v4 = 0;
  }

  return v4;
}

+ (id)numberForKey:(id)key withError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = keyCopy;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDefaults::numberForKey: %@\n", buf, 0xCu);
  }

  device = [self device];
  v10 = device;
  if (device)
  {
    v11 = *(device + 8);
    v21 = 0;
    v12 = [v11 getPreferencesValue:&v21 forKey:keyCopy];
    v13 = v21;
    v14 = v13;
    if (!v12)
    {
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        [BKDefaults numberForKey:error withError:?];
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      if (__osLogTrace)
      {
        v7 = __osLogTrace;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v16 = *error;
        }

        else
        {
          v16 = 0;
        }

        *buf = 138412802;
        *&buf[4] = keyCopy;
        v24 = 2112;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDefaults::numberForKey: -> (%@: %@), error:%@\n", buf, 0x20u);
      }

      goto LABEL_18;
    }

    +[BKDefaults numberForKey:withError:];
  }

  else
  {
    [BKDefaults numberForKey:buf withError:?];
  }

  v14 = *buf;
  setErrorWithOSStatus(v22, error);
  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v7;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v20 = *error;
    }

    else
    {
      v20 = 0;
    }

    *buf = 138412802;
    *&buf[4] = keyCopy;
    v24 = 2112;
    v25 = 0;
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_ERROR, "BKDefaults::numberForKey: -> (%@: %@), error:%@\n", buf, 0x20u);
  }

  v15 = 0;
LABEL_18:
  v17 = v15;

  return v15;
}

+ (id)stringForKey:(id)key withError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v7 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = keyCopy;
    _os_log_impl(&dword_1C82AD000, v8, OS_LOG_TYPE_DEFAULT, "BKDefaults::stringForKey: %@\n", buf, 0xCu);
  }

  device = [self device];
  v10 = device;
  if (device)
  {
    v11 = *(device + 8);
    v21 = 0;
    v12 = [v11 getPreferencesValue:&v21 forKey:keyCopy];
    v13 = v21;
    v14 = v13;
    if (!v12)
    {
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        [BKDefaults stringForKey:error withError:?];
        v15 = 0;
      }

      else
      {
        v15 = v14;
      }

      if (__osLogTrace)
      {
        v7 = __osLogTrace;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v16 = *error;
        }

        else
        {
          v16 = 0;
        }

        *buf = 138412802;
        *&buf[4] = keyCopy;
        v24 = 2112;
        v25 = v15;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_1C82AD000, v7, OS_LOG_TYPE_DEFAULT, "BKDefaults::stringForKey: -> (%@: %@), error:%@\n", buf, 0x20u);
      }

      goto LABEL_18;
    }

    +[BKDefaults stringForKey:withError:];
  }

  else
  {
    [BKDefaults stringForKey:buf withError:?];
  }

  v14 = *buf;
  setErrorWithOSStatus(v22, error);
  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v7;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v20 = *error;
    }

    else
    {
      v20 = 0;
    }

    *buf = 138412802;
    *&buf[4] = keyCopy;
    v24 = 2112;
    v25 = 0;
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_ERROR, "BKDefaults::stringForKey: -> (%@: %@), error:%@\n", buf, 0x20u);
  }

  v15 = 0;
LABEL_18:
  v17 = v15;

  return v15;
}

+ (BOOL)setNumber:(id)number forKey:(id)key withError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  keyCopy = key;
  v10 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = keyCopy;
    v23 = 2112;
    v24 = numberCopy;
    _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDefaults::setNumber:forKey: (%@: %@)\n", &v21, 0x16u);
  }

  device = [self device];
  v13 = device;
  if (device)
  {
    v14 = [*(device + 8) setPreferencesValue:numberCopy forKey:keyCopy];
    if (!v14)
    {
      if (__osLogTrace)
      {
        v15 = __osLogTrace;
      }

      else
      {
        v15 = v10;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v16 = *error;
        }

        else
        {
          v16 = 0;
        }

        v21 = 138413058;
        v22 = keyCopy;
        v23 = 2112;
        v24 = numberCopy;
        v25 = 1024;
        v17 = 1;
        v26 = 1;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_DEFAULT, "BKDefaults::setNumber:forKey: (%@: %@) -> %d, error:%@\n", &v21, 0x26u);
      }

      else
      {
        v17 = 1;
      }

      goto LABEL_17;
    }

    [BKDefaults setNumber:v14 forKey:v14 withError:&v21];
  }

  else
  {
    +[BKDefaults setNumber:forKey:withError:];
  }

  setErrorWithOSStatus(v21, error);
  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v10;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v20 = *error;
    }

    else
    {
      v20 = 0;
    }

    v21 = 138413058;
    v22 = keyCopy;
    v23 = 2112;
    v24 = numberCopy;
    v25 = 1024;
    v26 = 0;
    v27 = 2112;
    v28 = v20;
    _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_ERROR, "BKDefaults::setNumber:forKey: (%@: %@) -> %d, error:%@\n", &v21, 0x26u);
  }

  v17 = 0;
LABEL_17:

  return v17;
}

+ (BOOL)setString:(id)string forKey:(id)key withError:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  keyCopy = key;
  v10 = MEMORY[0x1E69E9C10];
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = keyCopy;
    v23 = 2112;
    v24 = stringCopy;
    _os_log_impl(&dword_1C82AD000, v11, OS_LOG_TYPE_DEFAULT, "BKDevice::setString:forKey: (%@: %@)\n", &v21, 0x16u);
  }

  device = [self device];
  v13 = device;
  if (device)
  {
    v14 = [*(device + 8) setPreferencesValue:stringCopy forKey:keyCopy];
    if (!v14)
    {
      if (__osLogTrace)
      {
        v15 = __osLogTrace;
      }

      else
      {
        v15 = v10;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v16 = *error;
        }

        else
        {
          v16 = 0;
        }

        v21 = 138413058;
        v22 = keyCopy;
        v23 = 2112;
        v24 = stringCopy;
        v25 = 1024;
        v17 = 1;
        v26 = 1;
        v27 = 2112;
        v28 = v16;
        _os_log_impl(&dword_1C82AD000, v15, OS_LOG_TYPE_DEFAULT, "BKDevice::setString:forKey: (%@: %@) -> %d, error:%@\n", &v21, 0x26u);
      }

      else
      {
        v17 = 1;
      }

      goto LABEL_17;
    }

    [BKDefaults setString:v14 forKey:v14 withError:&v21];
  }

  else
  {
    +[BKDefaults setString:forKey:withError:];
  }

  setErrorWithOSStatus(v21, error);
  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v10;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      v20 = *error;
    }

    else
    {
      v20 = 0;
    }

    v21 = 138413058;
    v22 = keyCopy;
    v23 = 2112;
    v24 = stringCopy;
    v25 = 1024;
    v26 = 0;
    v27 = 2112;
    v28 = v20;
    _os_log_impl(&dword_1C82AD000, v19, OS_LOG_TYPE_ERROR, "BKDevice::setString:forKey: (%@: %@) -> %d, error:%@\n", &v21, 0x26u);
  }

  v17 = 0;
LABEL_17:

  return v17;
}

+ (void)numberForKey:withError:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  if (OUTLINED_FUNCTION_9(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_2(&dword_1C82AD000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9);
  }

  *v1 = v3;
  *v0 = v2;
}

+ (id)numberForKey:(void *)a1 withError:.cold.2(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return setErrorWithOSStatus(0x16, a1);
}

+ (void)numberForKey:(uint64_t)a1 withError:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v3, v4, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5, v6, v7, v8);
  }

  *a2 = 0;
  OUTLINED_FUNCTION_9_0();
}

+ (void)stringForKey:withError:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  if (OUTLINED_FUNCTION_9(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_10_2(&dword_1C82AD000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9);
  }

  *v1 = v3;
  *v0 = v2;
}

+ (id)stringForKey:(void *)a1 withError:.cold.2(void *a1)
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return setErrorWithOSStatus(0x16, a1);
}

+ (void)stringForKey:(uint64_t)a1 withError:(void *)a2 .cold.3(uint64_t a1, void *a2)
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v3, v4, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5, v6, v7, v8);
  }

  *a2 = 0;
  OUTLINED_FUNCTION_9_0();
}

+ (void)setNumber:(uint64_t)a1 forKey:(int)a2 withError:(_DWORD *)a3 .cold.1(uint64_t a1, int a2, _DWORD *a3)
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10);
  }

  *a3 = a2;
}

+ (void)setNumber:forKey:withError:.cold.2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0();
}

+ (void)setString:(uint64_t)a1 forKey:(int)a2 withError:(_DWORD *)a3 .cold.1(uint64_t a1, int a2, _DWORD *a3)
{
  if (OUTLINED_FUNCTION_2_0(__osLog))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_7_1();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_2(&dword_1C82AD000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10);
  }

  *a3 = a2;
}

+ (void)setString:forKey:withError:.cold.2()
{
  if (OUTLINED_FUNCTION_2_1(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3_1(&dword_1C82AD000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_9_0();
}

@end