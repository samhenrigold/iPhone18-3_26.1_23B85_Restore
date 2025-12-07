@interface UIViewController(SKUIExtensions)
- (id)_SKUIView;
- (void)_SKUIView;
@end

@implementation UIViewController(SKUIExtensions)

- (id)_SKUIView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(UIViewController(SKUIExtensions) *)v3 _SKUIView:v4];
      }
    }
  }

  view = [self view];

  return view;
}

- (void)_SKUIView
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[UIViewController(SKUIExtensions) _SKUIView]";
}

@end