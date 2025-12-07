@interface GAXSBSBLockScreenOrientationManager
- (void)updateInterfaceOrientationWithRequestedOrientation:(int64_t)orientation animated:(BOOL)animated;
@end

@implementation GAXSBSBLockScreenOrientationManager

- (void)updateInterfaceOrientationWithRequestedOrientation:(int64_t)orientation animated:(BOOL)animated
{
  animatedCopy = animated;
  v7 = +[GAXSpringboard sharedInstance];
  if (([v7 isInactive] & 1) != 0 || objc_msgSend(v7, "allowsMotion"))
  {
    v8.receiver = self;
    v8.super_class = GAXSBSBLockScreenOrientationManager;
    [(GAXSBSBLockScreenOrientationManager *)&v8 updateInterfaceOrientationWithRequestedOrientation:orientation animated:animatedCopy];
  }
}

@end