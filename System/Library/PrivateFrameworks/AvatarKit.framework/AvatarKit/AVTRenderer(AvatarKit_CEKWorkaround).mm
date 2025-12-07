@interface AVTRenderer(AvatarKit_CEKWorkaround)
- (void)_implementCEKWorkaroundIfNeeded;
@end

@implementation AVTRenderer(AvatarKit_CEKWorkaround)

- (void)_implementCEKWorkaroundIfNeeded
{
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v9 = 136315394;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_1BB472000, v3, v4, "Error: Condition '%s' failed. Did expect subclass %@", v5, v6, v7, v8, v9);
}

@end