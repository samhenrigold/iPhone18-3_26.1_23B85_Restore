@interface NSDictionary(SKUIExtensions)
+ (id)sk_dictionaryWithSize:()SKUIExtensions;
@end

@implementation NSDictionary(SKUIExtensions)

+ (id)sk_dictionaryWithSize:()SKUIExtensions
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    +[NSDictionary(SKUIExtensions) sk_dictionaryWithSize:];
  }

  v10[0] = @"width";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self];
  v10[1] = @"height";
  v11[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

+ (void)sk_dictionaryWithSize:()SKUIExtensions .cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "+[NSDictionary(SKUIExtensions) sk_dictionaryWithSize:]";
}

@end