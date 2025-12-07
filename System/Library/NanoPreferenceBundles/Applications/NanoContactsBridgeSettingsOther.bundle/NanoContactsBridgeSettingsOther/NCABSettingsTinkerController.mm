@interface NCABSettingsTinkerController
- (CNUIFamilyMemberContactsController)familyMemberContactsController;
- (NCABSettingsTinkerController)init;
- (id)_localizedContactsManagementStringWithTinkerUserName:(id)name;
- (id)_localizedStringForKey:(id)key tinkerUserName:(id)name;
- (id)specifiers;
- (void)_editContactsForFamilyMember;
- (void)_fetchFamilyMember:(id)member;
- (void)_openScreenTimeForFamilyMember;
- (void)_openScreenTimeForFamilyMember:(id)member;
- (void)dismissPresentedViewController:(id)controller;
- (void)presentViewController:(id)controller;
- (void)setTinkerFamilyMember:(id)member;
@end

@implementation NCABSettingsTinkerController

- (NCABSettingsTinkerController)init
{
  v9.receiver = self;
  v9.super_class = NCABSettingsTinkerController;
  v2 = [(NCABSettingsTinkerController *)&v9 init];
  if (v2)
  {
    inited = objc_initWeak(&location, v2);
    v4 = NCBST_Tinker_log(inited);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v11 = "[NCABSettingsTinkerController init]";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%{public}s - starting family member fetch", buf, 0xCu);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_4180;
    v6[3] = &unk_C408;
    objc_copyWeak(&v7, &location);
    [(NCABSettingsTinkerController *)v2 _fetchFamilyMember:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)setTinkerFamilyMember:(id)member
{
  memberCopy = member;
  if (self->_tinkerFamilyMember != memberCopy)
  {
    objc_storeStrong(&self->_tinkerFamilyMember, member);
    v6 = NCBST_Tinker_log([(NCABSettingsTinkerController *)self setContactsManagementStateManager:0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      tinkerFamilyMember = self->_tinkerFamilyMember;
      *buf = 136446466;
      v16 = "[NCABSettingsTinkerController setTinkerFamilyMember:]";
      v17 = 2112;
      v18 = tinkerFamilyMember;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}s - reloading for familyMember: %@", buf, 0x16u);
    }

    [(NCABSettingsTinkerController *)self reloadSpecifiers];
    if (self->_tinkerFamilyMember)
    {
      v8 = [[NCABTinkerContactsManagementStateManager alloc] initWithFamilyMember:self->_tinkerFamilyMember autoEnableIfPossible:0];
      v9 = NCBST_Tinker_log([(NCABSettingsTinkerController *)self setContactsManagementStateManager:v8]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v16 = "[NCABSettingsTinkerController setTinkerFamilyMember:]";
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}s - fetching contactsManagementState", buf, 0xCu);
      }

      objc_initWeak(buf, self);
      contactsManagementStateManager = [(NCABSettingsTinkerController *)self contactsManagementStateManager];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_45E8;
      v12[3] = &unk_C430;
      objc_copyWeak(&v14, buf);
      v11 = v8;
      v13 = v11;
      [contactsManagementStateManager fetchContactsManagementStateWithCompletionHandler:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = [PSSpecifier groupSpecifierWithID:@"NCABST_GROUP_ID"];
    [v5 addObject:v6];
    tinkerFamilyMember = [(NCABSettingsTinkerController *)self tinkerFamilyMember];
    contactsManagementStateManager = [(NCABSettingsTinkerController *)self contactsManagementStateManager];
    lastKnownContactsManagementState = [contactsManagementStateManager lastKnownContactsManagementState];

    if (tinkerFamilyMember)
    {
      firstName = [tinkerFamilyMember firstName];
      if (firstName)
      {
        goto LABEL_8;
      }

      v11 = NCBST_Tinker_log(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_6024(tinkerFamilyMember, v11);
      }
    }

    firstName = 0;
LABEL_8:
    if (lastKnownContactsManagementState > 4)
    {
      if ((lastKnownContactsManagementState - 100) >= 2)
      {
        if (lastKnownContactsManagementState != 5 && lastKnownContactsManagementState != 102)
        {
          goto LABEL_19;
        }

        familyMemberContactsController = [(NCABSettingsTinkerController *)self familyMemberContactsController];
        [familyMemberContactsController countOfFamilyMemberContacts];

        v12 = [(NCABSettingsTinkerController *)self _localizedStringForKey:@"TK_CONTACTS_SETTINGS_EDIT_SATELLITE_CONTACTS" tinkerUserName:firstName];
        v14 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:13 edit:0];
        [v14 setIdentifier:@"NCABST_ACTION_ID"];
        v15 = "_editContactsForFamilyMember";
        goto LABEL_17;
      }
    }

    else if ((lastKnownContactsManagementState - 2) >= 3)
    {
      if (lastKnownContactsManagementState >= 2)
      {
LABEL_19:
        v16 = *&self->PSListController_opaque[v3];
        *&self->PSListController_opaque[v3] = v5;

        v4 = *&self->PSListController_opaque[v3];
        goto LABEL_20;
      }

      v12 = [(NCABSettingsTinkerController *)self _localizedContactsManagementStringWithTinkerUserName:firstName];
      [v6 setProperty:v12 forKey:PSFooterTextGroupKey];
LABEL_18:

      goto LABEL_19;
    }

    v12 = [(NCABSettingsTinkerController *)self _localizedStringForKey:@"TK_CONTACTS_SETUP_IN_SCREENTIME" tinkerUserName:firstName];
    v14 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:13 edit:0];
    [v14 setIdentifier:@"NCABST_ACTION_ID"];
    v15 = "_openScreenTimeForFamilyMember";
LABEL_17:
    [v14 setButtonAction:v15];
    [v14 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    [v5 addObject:v14];

    goto LABEL_18;
  }

LABEL_20:

  return v4;
}

- (id)_localizedStringForKey:(id)key tinkerUserName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    v6 = [NSString stringWithFormat:@"%@_USERNAME", key];
    v7 = NanoContactsSettingsTinkerBundle(v6);
    v8 = [v7 localizedStringForKey:v6 value:&stru_C610 table:@"NanoContactsBridgeSettingsTinker"];
    nameCopy = [NSString stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, nameCopy];
  }

  else
  {
    v6 = [NSString stringWithFormat:@"%@_NO_USERNAME", key];
    v7 = NanoContactsSettingsTinkerBundle(v6);
    nameCopy = [v7 localizedStringForKey:v6 value:&stru_C610 table:@"NanoContactsBridgeSettingsTinker"];
  }

  return nameCopy;
}

- (id)_localizedContactsManagementStringWithTinkerUserName:(id)name
{
  nameCopy = name;
  v5 = +[PDRRegistry sharedInstance];
  v6 = [v5 getDevicesExcluding:4];
  firstObject = [v6 firstObject];

  v8 = [firstObject valueForProperty:PDRDevicePropertyKeyIsArchived];
  if ([v8 BOOLValue])
  {
    v9 = 0;
  }

  else
  {
    v9 = firstObject;
  }

  v10 = v9;

  v11 = [v10 supportsCapability:3421730362];
  if (v11)
  {
    v12 = @"TK_CONTACTS_SETTINGS_EDIT_ON_DEVICE_CONTACTSAPP";
  }

  else
  {
    v12 = @"TK_CONTACTS_SETTINGS_EDIT_ON_DEVICE_PHONEAPP";
  }

  v13 = [(NCABSettingsTinkerController *)self _localizedStringForKey:v12 tinkerUserName:nameCopy];

  return v13;
}

- (void)_openScreenTimeForFamilyMember:(id)member
{
  memberCopy = member;
  dsid = [memberCopy dsid];
  v5 = [NSString stringWithValidatedFormat:@"prefs:root=SCREEN_TIME&path=CHILD_%@" validFormatSpecifiers:@"%@" error:0, dsid];

  v6 = [NSURL URLWithString:v5];
  v7 = NCBST_Tinker_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v10 = "[NCABSettingsTinkerController _openScreenTimeForFamilyMember:]";
    v11 = 2114;
    v12 = v6;
    v13 = 2112;
    v14 = memberCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}s - Opening URL %{public}@ for familyMember %@", buf, 0x20u);
  }

  v8 = +[LSApplicationWorkspace defaultWorkspace];
  [v8 openSensitiveURL:v6 withOptions:0];
}

- (void)_openScreenTimeForFamilyMember
{
  tinkerFamilyMember = [(NCABSettingsTinkerController *)self tinkerFamilyMember];
  [(NCABSettingsTinkerController *)self _openScreenTimeForFamilyMember:tinkerFamilyMember];
}

- (CNUIFamilyMemberContactsController)familyMemberContactsController
{
  if (!self->_familyMemberContactsController)
  {
    tinkerFamilyMember = [(NCABSettingsTinkerController *)self tinkerFamilyMember];

    if (tinkerFamilyMember)
    {
      v4 = [CNUIFamilyMemberContactsController alloc];
      tinkerFamilyMember2 = [(NCABSettingsTinkerController *)self tinkerFamilyMember];
      v6 = [v4 initWithFamilyMember:tinkerFamilyMember2 familyMemberContactsPresentation:self];
      familyMemberContactsController = self->_familyMemberContactsController;
      self->_familyMemberContactsController = v6;
    }
  }

  v8 = self->_familyMemberContactsController;

  return v8;
}

- (void)_editContactsForFamilyMember
{
  tinkerFamilyMember = [(NCABSettingsTinkerController *)self tinkerFamilyMember];

  if (tinkerFamilyMember)
  {
    v5 = NCBST_Tinker_log(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      familyMemberContactsController = [(NCABSettingsTinkerController *)self familyMemberContactsController];
      tinkerFamilyMember2 = [(NCABSettingsTinkerController *)self tinkerFamilyMember];
      v9 = 136446722;
      v10 = "[NCABSettingsTinkerController _editContactsForFamilyMember]";
      v11 = 2112;
      v12 = familyMemberContactsController;
      v13 = 2112;
      v14 = tinkerFamilyMember2;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}s - showing CNUIFamilyMemberContactsController: %@, familyMember: %@", &v9, 0x20u);
    }

    familyMemberContactsController2 = [(NCABSettingsTinkerController *)self familyMemberContactsController];
    [familyMemberContactsController2 performInteraction:3];
  }
}

- (void)presentViewController:(id)controller
{
  controllerCopy = controller;
  v5 = NCBST_Tinker_log(controllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 136446466;
    v11 = "[NCABSettingsTinkerController presentViewController:]";
    v12 = 2112;
    v13 = controllerCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %@", &v10, 0x16u);
  }

  navigationController = [(NCABSettingsTinkerController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  tintColor = [navigationBar tintColor];
  view = [controllerCopy view];
  [view setTintColor:tintColor];

  [(NCABSettingsTinkerController *)self presentViewController:controllerCopy animated:1 completion:0];
}

- (void)dismissPresentedViewController:(id)controller
{
  controllerCopy = controller;
  v5 = NCBST_Tinker_log(controllerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136446466;
    v7 = "[NCABSettingsTinkerController dismissPresentedViewController:]";
    v8 = 2112;
    v9 = controllerCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%{public}s: %@", &v6, 0x16u);
  }

  [(NCABSettingsTinkerController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_fetchFamilyMember:(id)member
{
  memberCopy = member;
  tinkerSupportHelper = [(NCABSettingsTinkerController *)self tinkerSupportHelper];

  if (!tinkerSupportHelper)
  {
    v5 = +[BPSTinkerSupport sharedInstance];
    [(NCABSettingsTinkerController *)self setTinkerSupportHelper:v5];
  }

  tinkerSupportHelper2 = [(NCABSettingsTinkerController *)self tinkerSupportHelper];
  cachedTinkerFamilyMemeber = [tinkerSupportHelper2 cachedTinkerFamilyMemeber];

  if (cachedTinkerFamilyMemeber)
  {
    memberCopy[2](memberCopy, cachedTinkerFamilyMemeber, 0);
  }

  else
  {
    tinkerSupportHelper3 = [(NCABSettingsTinkerController *)self tinkerSupportHelper];
    [tinkerSupportHelper3 getActiveTinkerFamilyMemberWithCompletion:memberCopy];
  }
}

@end