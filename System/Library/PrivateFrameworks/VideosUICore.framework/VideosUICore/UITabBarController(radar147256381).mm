@interface UITabBarController(radar147256381)
+ (void)vuiSetShouldCollapseTabBarOnScroll:()radar147256381 on:;
@end

@implementation UITabBarController(radar147256381)

+ (void)vuiSetShouldCollapseTabBarOnScroll:()radar147256381 on:
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = objc_opt_respondsToSelector();
  v7 = v6;
  v8 = VUICDefaultLogObject(v6);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      v10 = 67109120;
      v11 = a3;
      _os_log_impl(&dword_270E6E000, v8, OS_LOG_TYPE_DEFAULT, "UITabBar:: vuiSetShouldCollapseTabBarOnScroll: %d", &v10, 8u);
    }

    [v5 _setShouldCollapseTabBarOnScroll:a3];
  }

  else
  {
    if (v9)
    {
      v10 = 67109120;
      v11 = a3;
      _os_log_impl(&dword_270E6E000, v8, OS_LOG_TYPE_DEFAULT, "UITabBar:: vuiSetShouldCollapseTabBarOnScroll: %d", &v10, 8u);
    }
  }
}

@end