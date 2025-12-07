@interface UIView(SKUIExtensions)
- (uint64_t)_SKUIView;
- (void)_SKUIView;
@end

@implementation UIView(SKUIExtensions)

- (uint64_t)_SKUIView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(UIView(SKUIExtensions) *)v3 _SKUIView:v4];
      }
    }
  }

  return self;
}

- (void)_SKUIView
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[UIView(SKUIExtensions) _SKUIView]";
}

@end