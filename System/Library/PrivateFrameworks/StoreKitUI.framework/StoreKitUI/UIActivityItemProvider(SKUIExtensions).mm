@interface UIActivityItemProvider(SKUIExtensions)
+ (uint64_t)activityTypeShouldProvideImage:()SKUIExtensions;
@end

@implementation UIActivityItemProvider(SKUIExtensions)

+ (uint64_t)activityTypeShouldProvideImage:()SKUIExtensions
{
  v3 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[UIActivityItemProvider(SKUIExtensions) activityTypeShouldProvideImage:];
  }

  isEqualToString = objc_msgSend_isEqualToString_(v3);
  v5 = isEqualToString | objc_msgSend_isEqualToString_(v3);
  v6 = objc_msgSend_isEqualToString_(v3);
  v7 = v5 | v6 | objc_msgSend_isEqualToString_(v3);
  v8 = objc_msgSend_isEqualToString_(v3);

  return (v7 | v8) ^ 1u;
}

+ (void)activityTypeShouldProvideImage:()SKUIExtensions .cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[UIActivityItemProvider(SKUIExtensions) activityTypeShouldProvideImage:]";
}

@end