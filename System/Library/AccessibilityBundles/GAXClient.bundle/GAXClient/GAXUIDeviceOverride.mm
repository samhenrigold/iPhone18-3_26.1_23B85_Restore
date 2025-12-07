@interface GAXUIDeviceOverride
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
@end

@implementation GAXUIDeviceOverride

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = +[GAXClient sharedInstance];
  if ([v7 isActive] && (objc_msgSend(v7, "allowsMotion") & 1) == 0)
  {
    v8 = GAXLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "Guided Access blocking setOrientation:", buf, 2u);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GAXUIDeviceOverride;
    [(GAXUIDeviceOverride *)&v9 setOrientation:orientation animated:animatedCopy];
  }
}

@end