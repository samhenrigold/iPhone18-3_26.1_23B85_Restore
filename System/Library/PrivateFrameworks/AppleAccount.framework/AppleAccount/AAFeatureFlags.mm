@interface AAFeatureFlags
+ (BOOL)isSolariumEnabled;
+ (void)isSolariumEnabled;
@end

@implementation AAFeatureFlags

+ (BOOL)isSolariumEnabled
{
  v2 = _os_feature_enabled_impl();
  v3 = _AALogSystem(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    +[(AAFeatureFlags *)v2];
  }

  return v2;
}

+ (void)isSolariumEnabled
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = self & 1;
  _os_log_debug_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_DEBUG, "SwiftUI/Solarium=%d", v2, 8u);
}

@end