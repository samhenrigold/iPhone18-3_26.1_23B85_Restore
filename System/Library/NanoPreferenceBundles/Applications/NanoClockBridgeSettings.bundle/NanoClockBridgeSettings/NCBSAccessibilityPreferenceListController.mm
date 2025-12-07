@interface NCBSAccessibilityPreferenceListController
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NCBSAccessibilityPreferenceListController

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = NCBSAccessibilityPreferenceListController;
  [(NCBSAccessibilityPreferenceListController *)&v5 viewWillAppear:appear];
  [(NCBSAccessibilityPreferenceListController *)self reloadSpecifiers];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_24F4, @"NanoAccessibilityDefaultsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = NCBSAccessibilityPreferenceListController;
  [(NCBSAccessibilityPreferenceListController *)&v5 viewWillDisappear:disappear];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"NanoAccessibilityDefaultsChanged", 0);
}

@end