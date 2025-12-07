@interface IXSMoveOrDeleteAlert
- (IXSMoveOrDeleteAlert)initWithAppRecord:(id)record bundleIdentifier:(id)identifier removability:(unint64_t)removability deletionIsRestricted:(BOOL)restricted;
- (id)defaultButtonLabel;
- (id)message;
- (id)title;
@end

@implementation IXSMoveOrDeleteAlert

- (IXSMoveOrDeleteAlert)initWithAppRecord:(id)record bundleIdentifier:(id)identifier removability:(unint64_t)removability deletionIsRestricted:(BOOL)restricted
{
  v9.receiver = self;
  v9.super_class = IXSMoveOrDeleteAlert;
  v6 = [(IXSUninstallAlert *)&v9 initWithAppRecord:record bundleIdentifier:identifier removability:removability deletionIsRestricted:restricted];
  v7 = v6;
  if (v6)
  {
    [(IXSUninstallAlert *)v6 setTypeDescription:@"Move or Delete"];
    [(IXSUninstallAlert *)v7 setNeedsArchiveOptionButton:1];
  }

  return v7;
}

- (id)title
{
  appRecord = [(IXSUninstallAlert *)self appRecord];
  isManagedAppDistributor = [appRecord isManagedAppDistributor];

  if (isManagedAppDistributor)
  {
    v5 = @"UNINSTALL_ICON_TITLE_MOVE_TO_APP_LIBRARY_OR_DELETE_MARKETPLACE";
  }

  else if ([(IXSUninstallAlert *)self appIsRemovable])
  {
    v5 = @"UNINSTALL_ICON_TITLE_MOVE_TO_APP_LIBRARY_OR_DELETE";
  }

  else
  {
    v5 = @"UNINSTALL_ICON_TITLE_MOVE_TO_APP_LIBRARY";
  }

  v6 = [(IXSUninstallAlert *)self localizedStringForKey:v5 withFormatHint:@"Remove “%@”?"];
  appRecord2 = [(IXSUninstallAlert *)self appRecord];
  localizedName = [appRecord2 localizedName];
  v9 = [NSString localizedStringWithFormat:v6, localizedName];

  return v9;
}

- (id)message
{
  appRecord = [(IXSUninstallAlert *)self appRecord];
  isManagedAppDistributor = [appRecord isManagedAppDistributor];

  if (isManagedAppDistributor)
  {
    v5 = @"UNINSTALL_ICON_BODY_MOVE_TO_APP_LIBRARY_MARKETPLACE";
    v6 = @"Removing from Home Screen will keep the app marketplace in your App Library. If you delete this marketplace, apps installed from this marketplace will no longer update.";
  }

  else
  {
    v5 = @"UNINSTALL_ICON_BODY_MOVE_TO_APP_LIBRARY";
    v6 = @"Removing from Home Screen will keep the app in your App Library.";
  }

  v7 = [(IXSUninstallAlert *)self localizedStringForKey:v5 withFormatHint:v6];

  return v7;
}

- (id)defaultButtonLabel
{
  appRecord = [(IXSUninstallAlert *)self appRecord];
  isManagedAppDistributor = [appRecord isManagedAppDistributor];

  if (isManagedAppDistributor)
  {
    v5 = @"UNINSTALL_ICON_BUTTON_DELETE_MARKETPLACE";
    v6 = @"Delete App Marketplace";
  }

  else
  {
    v5 = @"UNINSTALL_ICON_BUTTON_DELETE_APP";
    v6 = @"Delete App";
  }

  v7 = [(IXSUninstallAlert *)self localizedStringForKey:v5 withFormatHint:v6];

  return v7;
}

@end