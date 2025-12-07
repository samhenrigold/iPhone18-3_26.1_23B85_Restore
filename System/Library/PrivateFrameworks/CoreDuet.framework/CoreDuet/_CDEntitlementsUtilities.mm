@interface _CDEntitlementsUtilities
+ (id)entitlementValueForKey:(id)key;
@end

@implementation _CDEntitlementsUtilities

+ (id)entitlementValueForKey:(id)key
{
  keyCopy = key;
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, keyCopy, &error);
    if (error)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [(_CDEntitlementsUtilities *)keyCopy entitlementValueForKey:?];
      }

      CFRelease(error);
    }

    CFRelease(v5);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      +[_CDEntitlementsUtilities entitlementValueForKey:];
    }

    v6 = 0;
  }

  return v6;
}

+ (void)entitlementValueForKey:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to get entitlement '%@': %@", &v3, 0x16u);
}

@end