@interface NCBSMainMenuViewController
- (id)bundle;
- (id)localizedPaneTitle;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NCBSMainMenuViewController

- (id)localizedPaneTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PANE_TITLE" value:&stru_C6C0 table:@"NanoClockBridgeSettings"];

  return v3;
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = NCBSMainMenuViewController;
  [(NCBSMainMenuViewController *)&v8 viewWillAppear:appear];
  +[NCBSClockSettingsNavigationDonation donateUserVisitForClockSettings];
  [(NCBSMainMenuViewController *)self reloadSpecifiers];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_54D4, @"NanoAccessibilityDefaultsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v5, self, sub_54D4, @"com.apple.NanoTimeKit.NTKNanoPrefsChanges", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, self, sub_54D4, @"FaceSupportFastSwitching", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if (+[NCBSMainMenuDataSource _supportsSettingShowComplicationDataWhenPasscodeLocked])
  {
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, self, sub_54D4, @"showComplicationDataWhenPasscodeLocked", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v8.receiver = self;
  v8.super_class = NCBSMainMenuViewController;
  [(NCBSMainMenuViewController *)&v8 viewWillDisappear:disappear];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"NanoAccessibilityDefaultsChanged", 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, @"com.apple.NanoTimeKit.NTKNanoPrefsChanges", 0);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v6, self, @"FaceSupportFastSwitching", 0);
  if (+[NCBSMainMenuDataSource _supportsSettingShowComplicationDataWhenPasscodeLocked])
  {
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v7, self, @"showComplicationDataWhenPasscodeLocked", 0);
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v20.receiver = self;
  v20.super_class = NCBSMainMenuViewController;
  pathCopy = path;
  [(NCBSMainMenuViewController *)&v20 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(NCBSMainMenuViewController *)self indexForIndexPath:pathCopy, v20.receiver, v20.super_class];
  specifiers = [(NCBSMainMenuViewController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(NCBSMainMenuViewController *)self specifierAtIndex:[(NCBSMainMenuViewController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:PSIsRadioGroupKey];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    identifier = [v11 identifier];
    v15 = [identifier isEqualToString:@"TapToSpeakTimeSettingsGroupID"];

    if (v15)
    {
      v16 = [v9 propertyForKey:PSValueKey];
      v17 = v16;
      if (v16)
      {
        integerValue = [v16 integerValue];
        v19 = +[AXTimeOutputPreferences sharedInstance];
        [v19 setTapToSpeakTimeAvailability:integerValue];

        [(NCBSMainMenuViewController *)self reloadSpecifiers];
      }
    }
  }
}

@end