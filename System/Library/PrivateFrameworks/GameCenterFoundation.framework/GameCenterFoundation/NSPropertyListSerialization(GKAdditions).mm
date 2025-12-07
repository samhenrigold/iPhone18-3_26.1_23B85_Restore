@interface NSPropertyListSerialization(GKAdditions)
+ (id)_gkTypesafePropertyListWithData:()GKAdditions withClass:;
@end

@implementation NSPropertyListSerialization(GKAdditions)

+ (id)_gkTypesafePropertyListWithData:()GKAdditions withClass:
{
  if (a3)
  {
    v9 = 0;
    v10 = 200;
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:&v10 error:&v9];
    v5 = v9;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      if (!os_log_GKGeneral)
      {
        v6 = GKOSLoggers();
      }

      v7 = os_log_GKError;
      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        [NSPropertyListSerialization(GKAdditions) _gkTypesafePropertyListWithData:v7 withClass:?];
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)_gkTypesafePropertyListWithData:()GKAdditions withClass:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_2();
  v5 = 0;
  _os_log_error_impl(&dword_227904000, v1, OS_LOG_TYPE_ERROR, "unexpected class %@ encountered during property list deserialization to %@. will return a nil result", v4, 0x16u);
}

@end