@interface ZoomUI_SBFluidSwitcherViewController
- (void)handleFluidSwitcherGestureManager:(id)manager didBeginGesture:(id)gesture;
- (void)handleFluidSwitcherGestureManager:(id)manager didEndGesture:(id)gesture;
@end

@implementation ZoomUI_SBFluidSwitcherViewController

- (void)handleFluidSwitcherGestureManager:(id)manager didBeginGesture:(id)gesture
{
  managerCopy = manager;
  gestureCopy = gesture;
  v8 = [(ZoomUI_SBFluidSwitcherViewController *)self safeUIViewForKey:@"view"];
  window = [v8 window];
  screen = [window screen];
  displayIdentity = [screen displayIdentity];
  displayID = [displayIdentity displayID];

  HasHomeButton = soft_AXDeviceHasHomeButton(v13, v14);
  if ((!HasHomeButton || soft_AXDeviceIsPad(HasHomeButton, v16)) && (translatedUpwards & 1) != 0 || ([getZoomServicesClass() sharedInstance], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "activeZoomModeOnDisplay:", displayID), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", *MEMORY[0x29EDBD628]), v18, v17, v19))
  {
    sharedInstance = [getZoomServicesClass() sharedInstance];
    [sharedInstance notifyZoomFluidSwitcherGestureWillBegin];
  }

  v21.receiver = self;
  v21.super_class = ZoomUI_SBFluidSwitcherViewController;
  [(ZoomUI_SBFluidSwitcherViewController *)&v21 handleFluidSwitcherGestureManager:managerCopy didBeginGesture:gestureCopy];
}

- (void)handleFluidSwitcherGestureManager:(id)manager didEndGesture:(id)gesture
{
  managerCopy = manager;
  gestureCopy = gesture;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  HasHomeButton = soft_AXDeviceHasHomeButton(gestureCopy, v8);
  if (!HasHomeButton || (HasHomeButton = soft_AXDeviceIsPad(HasHomeButton, v10), HasHomeButton))
  {
    if (soft_AXDeviceIsPad(HasHomeButton, v10))
    {
      v11 = [(ZoomUI_SBFluidSwitcherViewController *)self safeValueForKey:@"rootModifier"];
      v15[0] = MEMORY[0x29EDCA5F8];
      v15[1] = 3221225472;
      v15[2] = __88__ZoomUI_SBFluidSwitcherViewController_handleFluidSwitcherGestureManager_didEndGesture___block_invoke;
      v15[3] = &unk_29F29A5D0;
      v12 = v11;
      v16 = v12;
      v17 = &v18;
      soft_AXPerformSafeBlock(v15);
    }

    if ((v19[3] & 1) == 0)
    {
      sharedInstance = [getZoomServicesClass() sharedInstance];
      [sharedInstance performSelector:sel_notifyZoomFluidSwitcherGestureDidFinish withObject:0 afterDelay:0.5];
    }
  }

  v14.receiver = self;
  v14.super_class = ZoomUI_SBFluidSwitcherViewController;
  [(ZoomUI_SBFluidSwitcherViewController *)&v14 handleFluidSwitcherGestureManager:managerCopy didEndGesture:gestureCopy];
  _Block_object_dispose(&v18, 8);
}

@end