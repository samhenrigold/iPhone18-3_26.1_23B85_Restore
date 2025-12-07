@interface GAXUIDeviceOverride
- (void)gax_forceSetOrientation:(int64_t)orientation animated:(BOOL)animated;
- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated;
@end

@implementation GAXUIDeviceOverride

- (void)gax_forceSetOrientation:(int64_t)orientation animated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = GAXUIDeviceOverride;
  [(GAXUIDeviceOverride *)&v4 setOrientation:orientation animated:animated];
}

- (void)setOrientation:(int64_t)orientation animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = +[GAXSpringboard sharedInstance];
  if (![v7 isActive] || objc_msgSend(v7, "allowsMotion"))
  {
    v8.receiver = self;
    v8.super_class = GAXUIDeviceOverride;
    [(GAXUIDeviceOverride *)&v8 setOrientation:orientation animated:animatedCopy];
  }
}

@end