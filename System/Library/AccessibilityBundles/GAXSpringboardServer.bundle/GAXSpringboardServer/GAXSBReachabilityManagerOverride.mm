@interface GAXSBReachabilityManagerOverride
- (void)_updateReachabilityModeActive:(BOOL)active animated:(BOOL)animated;
@end

@implementation GAXSBReachabilityManagerOverride

- (void)_updateReachabilityModeActive:(BOOL)active animated:(BOOL)animated
{
  animatedCopy = animated;
  activeCopy = active;
  v7 = +[GAXSpringboard sharedInstance];
  v8 = v7;
  if (activeCopy && [v7 isActive] && (objc_msgSend(v8, "wantsSingleAppModeOrAppSelfLockMode") & 1) == 0)
  {
    v9 = GAXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Guided Access active. Not allowing Easy Reach", buf, 2u);
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = GAXSBReachabilityManagerOverride;
    [(GAXSBReachabilityManagerOverride *)&v10 _updateReachabilityModeActive:activeCopy animated:animatedCopy];
  }
}

@end