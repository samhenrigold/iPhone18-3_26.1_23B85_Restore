@interface ZoomUI_SBDashBoardLockScreenEnvironmentOverride
- (void)finishUIUnlockFromSource:(int)source;
@end

@implementation ZoomUI_SBDashBoardLockScreenEnvironmentOverride

- (void)finishUIUnlockFromSource:(int)source
{
  v4.receiver = self;
  v4.super_class = ZoomUI_SBDashBoardLockScreenEnvironmentOverride;
  [(ZoomUI_SBDashBoardLockScreenEnvironmentOverride *)&v4 finishUIUnlockFromSource:*&source];
  sharedInstance = [getZoomServicesClass() sharedInstance];
  [sharedInstance notifyZoomDeviceWasUnlocked];
}

@end