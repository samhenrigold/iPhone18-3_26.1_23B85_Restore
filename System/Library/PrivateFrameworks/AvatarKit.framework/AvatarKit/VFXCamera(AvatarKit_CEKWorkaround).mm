@interface VFXCamera(AvatarKit_CEKWorkaround)
- (Class)_implementCEKWorkaroundIfNeeded;
- (void)_implementCEKWorkaroundIfNeeded;
@end

@implementation VFXCamera(AvatarKit_CEKWorkaround)

- (Class)_implementCEKWorkaroundIfNeeded
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    if (v3 != v4)
    {
      v5 = avt_default_log(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(VFXCamera(AvatarKit_CEKWorkaround) *)self _implementCEKWorkaroundIfNeeded];
      }
    }

    v6 = objc_opt_class();
    return object_setClass(self, v6);
  }

  return result;
}

- (void)_implementCEKWorkaroundIfNeeded
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v9 = 136315394;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_1BB472000, v3, v4, "Error: Condition '%s' failed. Did expect subclass %@", v5, v6, v7, v8, v9);
}

@end