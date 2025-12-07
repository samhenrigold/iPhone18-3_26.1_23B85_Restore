@interface ATXAppSwitcherSuggestionSender
- (void)blendingLayerDidUpdateAppSwitcherUICache;
@end

@implementation ATXAppSwitcherSuggestionSender

- (void)blendingLayerDidUpdateAppSwitcherUICache
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_blending(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%@ - received new ui cache", &v5, 0xCu);
  }

  notify_post([*MEMORY[0x277CEB1C8] UTF8String]);
}

@end