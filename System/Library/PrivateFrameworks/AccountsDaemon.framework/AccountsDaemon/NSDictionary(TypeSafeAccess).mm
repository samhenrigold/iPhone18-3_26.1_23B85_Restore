@interface NSDictionary(TypeSafeAccess)
- (id)dataValueForKey:()TypeSafeAccess;
- (id)stringValueForKey:()TypeSafeAccess;
- (uint64_t)BOOLValueForKey:()TypeSafeAccess;
@end

@implementation NSDictionary(TypeSafeAccess)

- (id)stringValueForKey:()TypeSafeAccess
{
  v4 = a3;
  v5 = [self valueForKey:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v7 = v5;
      goto LABEL_8;
    }

    v8 = _ACDLogSystem(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NSDictionary(TypeSafeAccess) *)v4 stringValueForKey:v5];
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (id)dataValueForKey:()TypeSafeAccess
{
  v4 = a3;
  v5 = [self valueForKey:v4];
  if (v5)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v7 = v5;
      goto LABEL_8;
    }

    v8 = _ACDLogSystem(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NSDictionary(TypeSafeAccess) *)v4 dataValueForKey:v5];
    }
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (uint64_t)BOOLValueForKey:()TypeSafeAccess
{
  v4 = a3;
  v5 = [self valueForKey:v4];
  if (!v5)
  {
LABEL_7:
    bOOLValue = 0;
    goto LABEL_8;
  }

  v6 = objc_opt_respondsToSelector();
  if ((v6 & 1) == 0)
  {
    v8 = _ACDLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(NSDictionary(TypeSafeAccess) *)v4 dataValueForKey:v5];
    }

    goto LABEL_7;
  }

  bOOLValue = [v5 BOOLValue];
LABEL_8:

  return bOOLValue;
}

- (void)stringValueForKey:()TypeSafeAccess .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0_4(v2);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)dataValueForKey:()TypeSafeAccess .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_0_4(v2);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end