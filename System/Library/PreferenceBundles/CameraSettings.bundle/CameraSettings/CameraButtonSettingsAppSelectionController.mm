@interface CameraButtonSettingsAppSelectionController
- (NSSet)_eligibleAppsBundleIDs;
- (NSString)_associatedAppBundleID;
- (id)_createSpecifiers;
- (id)_eligibleAppsSpecifiers;
- (id)_listItemSpecifierForBundleID:(id)d appAuthorized:(BOOL)authorized;
- (id)specifiers;
- (void)_setupAppConfigurationCoordinatorIfNecessary;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CameraButtonSettingsAppSelectionController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CameraButtonSettingsAppSelectionController;
  [(CameraSettingsBaseController *)&v5 viewDidLoad];
  associatedAppBundleID = [*(&self->super + 1) associatedAppBundleID];
  v4 = [CameraSettingsUtilities displayNameForBundleID:associatedAppBundleID];

  [(CameraButtonSettingsAppSelectionController *)self setTitle:v4];
}

- (id)specifiers
{
  [(CameraButtonSettingsAppSelectionController *)self _setupAppConfigurationCoordinatorIfNecessary];
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    _createSpecifiers = [(CameraButtonSettingsAppSelectionController *)self _createSpecifiers];
    [CameraSettingsBaseController allowMultilineTitlesForSpecifiers:_createSpecifiers];
    v6 = [_createSpecifiers copy];
    v7 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v6;

    v4 = *&self->super.PSListController_opaque[v3];
  }

  return v4;
}

- (id)_createSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"appListGroup"];
  [v4 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
  [v4 setObject:@"CAMAppListGroupSpecifier" forKeyedSubscript:PSIDKey];
  [v3 addObject:v4];
  _eligibleAppsSpecifiers = [(CameraButtonSettingsAppSelectionController *)self _eligibleAppsSpecifiers];
  [v3 addObjectsFromArray:_eligibleAppsSpecifiers];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_8C00;
  v9[3] = &unk_2CC50;
  v9[4] = self;
  v6 = [_eligibleAppsSpecifiers indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [_eligibleAppsSpecifiers objectAtIndexedSubscript:v6];
  }

  [v4 setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];

  return v3;
}

- (NSString)_associatedAppBundleID
{
  _captureButtonAppConfigurationCoordinator = [(CameraButtonSettingsAppSelectionController *)self _captureButtonAppConfigurationCoordinator];
  associatedAppBundleID = [_captureButtonAppConfigurationCoordinator associatedAppBundleID];

  return associatedAppBundleID;
}

- (NSSet)_eligibleAppsBundleIDs
{
  _captureButtonAppConfigurationCoordinator = [(CameraButtonSettingsAppSelectionController *)self _captureButtonAppConfigurationCoordinator];
  eligibleAppsBundleIDs = [_captureButtonAppConfigurationCoordinator eligibleAppsBundleIDs];

  return eligibleAppsBundleIDs;
}

- (id)_eligibleAppsSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  _eligibleAppsBundleIDs = [(CameraButtonSettingsAppSelectionController *)self _eligibleAppsBundleIDs];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_8E48;
  v13 = &unk_2CC78;
  selfCopy = self;
  v5 = v3;
  v15 = v5;
  [_eligibleAppsBundleIDs enumerateObjectsUsingBlock:&v10];

  [v5 sortUsingComparator:{&stru_2CCB8, v10, v11, v12, v13, selfCopy}];
  v6 = [(CameraButtonSettingsAppSelectionController *)self _listItemSpecifierForBundleID:0 appAuthorized:1];
  [v5 addObject:v6];

  v7 = v15;
  v8 = v5;

  return v5;
}

- (id)_listItemSpecifierForBundleID:(id)d appAuthorized:(BOOL)authorized
{
  authorizedCopy = authorized;
  dCopy = d;
  if (dCopy)
  {
    v7 = [CameraSettingsUtilities displayNameForBundleID:dCopy];
  }

  else
  {
    [NSBundle bundleForClass:NSClassFromString(@"CameraSettingsController")];
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_941C;
    v26 = sub_942C;
    v27 = 0;
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_9434;
    v18 = &unk_2CA98;
    v8 = v21 = &v22;
    v19 = v8;
    v20 = @"CAMERA_BUTTON_APP_LIST_NO_ACTION";
    [&off_320E0 enumerateObjectsUsingBlock:&v15];
    v7 = v23[5];

    _Block_object_dispose(&v22, 8);
  }

  v9 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0, v15, v16, v17, v18];
  v10 = v9;
  if (dCopy)
  {
    [v9 setIdentifier:dCopy];
    [v10 setProperty:dCopy forKey:PSLazyIconAppID];
    [v10 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
    v11 = [NSNumber numberWithBool:authorizedCopy];
    v12 = &PSEnabledKey;
  }

  else
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [UIImage imageNamed:@"no-action-icon" inBundle:v13];

    [v10 setIdentifier:@"CAMNoActionSpecifierID"];
    v12 = &PSIconImageKey;
  }

  [v10 setProperty:v11 forKey:*v12];

  return v10;
}

- (void)_setupAppConfigurationCoordinatorIfNecessary
{
  if (!*(&self->super + 1))
  {
    v3 = [CameraSettingsUtilities appConfigurationCoordinatorForController:self];
    v4 = *(&self->super + 1);
    *(&self->super + 1) = v3;

    v5 = *(&self->super + 1);

    [v5 addObserver:self];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = CameraButtonSettingsAppSelectionController;
  [(CameraButtonSettingsAppSelectionController *)&v14 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(CameraButtonSettingsAppSelectionController *)self specifierAtIndexPath:pathCopy];
  v8 = [(CameraButtonSettingsAppSelectionController *)self specifierForID:@"CAMAppListGroupSpecifier"];
  if (v8)
  {
    v9 = [(CameraButtonSettingsAppSelectionController *)self indexPathForSpecifier:v8];
    section = [v9 section];
  }

  else
  {
    section = 0x7FFFFFFFFFFFFFFFLL;
  }

  if ([pathCopy section] == section)
  {
    identifier = [v7 identifier];
    if (identifier)
    {
      [v8 setProperty:v7 forKey:PSRadioGroupCheckedSpecifierKey];
      if (identifier == @"CAMNoActionSpecifierID")
      {
        v12 = 0;
      }

      else
      {
        v12 = identifier;
      }

      _captureButtonAppConfigurationCoordinator = [(CameraButtonSettingsAppSelectionController *)self _captureButtonAppConfigurationCoordinator];
      [_captureButtonAppConfigurationCoordinator setAssociatedAppBundleID:v12];
    }

    else
    {
      _captureButtonAppConfigurationCoordinator = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(_captureButtonAppConfigurationCoordinator, OS_LOG_TYPE_ERROR))
      {
        sub_1B878(v7, _captureButtonAppConfigurationCoordinator);
      }
    }
  }
}

@end