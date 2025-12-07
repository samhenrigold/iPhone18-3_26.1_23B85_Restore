@interface SKUIStateRestorationContext
+ (id)sharedContext;
+ (void)setSharedContext:(id)context;
+ (void)sharedContext;
@end

@implementation SKUIStateRestorationContext

+ (void)setSharedContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIStateRestorationContext *)v4 setSharedContext:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = sContext;
  sContext = contextCopy;
}

+ (id)sharedContext
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIStateRestorationContext *)v2 sharedContext:v3];
      }
    }
  }

  v10 = sContext;

  return v10;
}

+ (void)setSharedContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIStateRestorationContext setSharedContext:]";
}

+ (void)sharedContext
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIStateRestorationContext sharedContext]";
}

@end