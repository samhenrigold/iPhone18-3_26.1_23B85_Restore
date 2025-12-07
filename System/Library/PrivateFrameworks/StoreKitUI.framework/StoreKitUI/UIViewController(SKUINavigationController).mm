@interface UIViewController(SKUINavigationController)
- (uint64_t)SKUIPinnedHeaderView;
- (void)SKUIPinnedHeaderView;
@end

@implementation UIViewController(SKUINavigationController)

- (uint64_t)SKUIPinnedHeaderView
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(UIViewController(SKUINavigationController) *)v2 SKUIPinnedHeaderView:v3];
      }
    }
  }

  return 0;
}

- (void)SKUIPinnedHeaderView
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[UIViewController(SKUINavigationController) SKUIPinnedHeaderView]";
}

@end