@interface NCABSettingsPairedShortNameController
- (NCABSettingsPairedShortNameController)init;
- (id)_getValueForKey:(id)key;
- (id)preferNicknames;
- (id)shortNameEnabled;
- (id)shortNameFormat;
- (id)specifiers;
- (void)_setValue:(id)value forKey:(id)key syncWithClient:(BOOL)client;
- (void)setShortNameEnabled:(id)enabled;
- (void)setShortNameFormat:(id)format;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NCABSettingsPairedShortNameController

- (NCABSettingsPairedShortNameController)init
{
  v15.receiver = self;
  v15.super_class = NCABSettingsPairedShortNameController;
  v2 = [(NCABSettingsPairedShortNameController *)&v15 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    v5 = [NPSDomainAccessor alloc];
    v6 = [v5 initWithDomain:NSPersonNameDefaultNamePreferencesDomain];
    foundationDomainAccessor = v2->_foundationDomainAccessor;
    v2->_foundationDomainAccessor = v6;

    v8 = +[PDRRegistry sharedInstance];
    v9 = [v8 getDevicesExcluding:4];
    firstObject = [v9 firstObject];

    if (firstObject)
    {
      PDRWatchOSVersionForRemoteDevice();
      IsGreaterThanOrEqual = PDRVersionIsGreaterThanOrEqual();
      v2->_activePairedWatchRequiresLegacyKeys = IsGreaterThanOrEqual ^ 1;
      if ((IsGreaterThanOrEqual & 1) == 0)
      {
        v12 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.PeoplePicker"];
        peoplePickerDomainAccessor = v2->_peoplePickerDomainAccessor;
        v2->_peoplePickerDomainAccessor = v12;
      }
    }
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = NCABSettingsPairedShortNameController;
  [(NCABSettingsPairedShortNameController *)&v17 viewWillAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"Short Name" table:@"NanoContactsBridgeSettingsPaired" locale:v5 bundleURL:bundleURL];

  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"CONTACTS" table:@"NanoContactsBridgeSettingsPaired" locale:v9 bundleURL:bundleURL2];

  bundleIdentifier = [v3 bundleIdentifier];
  v18 = v11;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  bundleIdentifier2 = [v3 bundleIdentifier];
  v15 = [NSString stringWithFormat:@"bridge:root=%@&path=PersonShortName", bundleIdentifier2];
  v16 = [NSURL URLWithString:v15];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:bundleIdentifier title:v7 localizedNavigationComponents:v13 deepLink:v16];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v50 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = NanoContactsSettingsPairedBundle(v4);
    v6 = [v5 localizedStringForKey:@"Short Name" value:? table:?];
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setShortNameEnabled:" get:"shortNameEnabled" detail:0 cell:6 edit:0];
    shortNameEnabledSpecifier = self->_shortNameEnabledSpecifier;
    self->_shortNameEnabledSpecifier = v7;

    v9 = self->_shortNameEnabledSpecifier;
    v10 = [NSNumber numberWithBool:1];
    v48 = PSDefaultValueKey;
    [(PSSpecifier *)v9 setProperty:v10 forKey:?];

    v49 = v4;
    [v4 addObject:self->_shortNameEnabledSpecifier];
    shortNameFormat = [(NCABSettingsPairedShortNameController *)self shortNameFormat];
    integerValue = [shortNameFormat integerValue];

    v13 = [[NSMutableArray alloc] initWithCapacity:6];
    shortNameFormatsSpecifiers = self->_shortNameFormatsSpecifiers;
    self->_shortNameFormatsSpecifiers = v13;

    v15 = +[PSSpecifier emptyGroupSpecifier];
    shortNameFormatsGroup = self->_shortNameFormatsGroup;
    self->_shortNameFormatsGroup = v15;

    v17 = self->_shortNameFormatsGroup;
    v18 = [NSNumber numberWithBool:1];
    [(PSSpecifier *)v17 setProperty:v18 forKey:PSIsRadioGroupKey];

    v19 = self->_shortNameFormatsGroup;
    v21 = NanoContactsSettingsPairedBundle(v20);
    v22 = [v21 localizedStringForKey:@"SHORT_NAME_FORMAT_EXPLANATORY" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
    v47 = PSFooterTextGroupKey;
    [(PSSpecifier *)v19 setProperty:v22 forKey:?];

    v23 = NanoContactsSettingsPairedBundle([(NSMutableArray *)self->_shortNameFormatsSpecifiers addObject:self->_shortNameFormatsGroup]);
    v24 = [v23 localizedStringForKey:@"SHORT_NAME_FORMAT_INITIAL_LAST" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
    v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v25 setUserInfo:&off_8678];
    if (integerValue == (&dword_0 + 1))
    {
      [(PSSpecifier *)self->_shortNameFormatsGroup setProperty:v25 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v26 = NanoContactsSettingsPairedBundle([(NSMutableArray *)self->_shortNameFormatsSpecifiers addObject:v25]);
    v27 = [v26 localizedStringForKey:@"SHORT_NAME_FORMAT_INITIAL_FIRST" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
    v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v28 setUserInfo:&off_8690];
    if (integerValue == (&dword_0 + 2))
    {
      [(PSSpecifier *)self->_shortNameFormatsGroup setProperty:v28 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v29 = NanoContactsSettingsPairedBundle([(NSMutableArray *)self->_shortNameFormatsSpecifiers addObject:v28]);
    v30 = [v29 localizedStringForKey:@"SHORT_NAME_FORMAT_FIRST_ONLY" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
    v31 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v31 setUserInfo:&off_86A8];
    if (integerValue == (&dword_0 + 3))
    {
      [(PSSpecifier *)self->_shortNameFormatsGroup setProperty:v31 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    v32 = NanoContactsSettingsPairedBundle([(NSMutableArray *)self->_shortNameFormatsSpecifiers addObject:v31]);
    v33 = [v32 localizedStringForKey:@"SHORT_NAME_FORMAT_LAST_ONLY" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
    v34 = [PSSpecifier preferenceSpecifierNamed:v33 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v34 setUserInfo:&off_86C0];
    if (integerValue == &dword_4)
    {
      [(PSSpecifier *)self->_shortNameFormatsGroup setProperty:v34 forKey:PSRadioGroupCheckedSpecifierKey];
    }

    [(NSMutableArray *)self->_shortNameFormatsSpecifiers addObject:v34];
    shortNameEnabled = [(NCABSettingsPairedShortNameController *)self shortNameEnabled];
    bOOLValue = [shortNameEnabled BOOLValue];

    if (bOOLValue)
    {
      [v49 addObjectsFromArray:self->_shortNameFormatsSpecifiers];
    }

    v37 = +[PSSpecifier emptyGroupSpecifier];

    v39 = NanoContactsSettingsPairedBundle(v38);
    v40 = [v39 localizedStringForKey:@"PREFER_NICKNAMES_EXPLANTORY" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
    [v37 setProperty:v40 forKey:v47];

    v41 = NanoContactsSettingsPairedBundle([v49 addObject:v37]);
    v42 = [v41 localizedStringForKey:@"Prefer Nicknames" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
    v43 = [PSSpecifier preferenceSpecifierNamed:v42 target:self set:"setPreferNicknames:" get:"preferNicknames" detail:0 cell:6 edit:0];

    v44 = [NSNumber numberWithBool:1];
    [v43 setProperty:v44 forKey:v48];

    [v49 addObject:v43];
    v45 = *&self->PSListController_opaque[v50];
    *&self->PSListController_opaque[v50] = v49;

    v3 = *&self->PSListController_opaque[v50];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v12.receiver = self;
  v12.super_class = NCABSettingsPairedShortNameController;
  [(NCABSettingsPairedShortNameController *)&v12 tableView:view didSelectRowAtIndexPath:pathCopy];
  section = [pathCopy section];
  v8 = [(NCABSettingsPairedShortNameController *)self indexPathForIndex:[(NCABSettingsPairedShortNameController *)self indexOfSpecifier:self->_shortNameFormatsGroup]];
  section2 = [v8 section];

  if (section == section2)
  {
    v10 = [(NCABSettingsPairedShortNameController *)self specifierAtIndex:[(NCABSettingsPairedShortNameController *)self indexForIndexPath:pathCopy]];
    userInfo = [v10 userInfo];
    [(NCABSettingsPairedShortNameController *)self setShortNameFormat:userInfo];

    [(PSSpecifier *)self->_shortNameFormatsGroup setProperty:v10 forKey:PSRadioGroupCheckedSpecifierKey];
  }
}

- (void)setShortNameEnabled:(id)enabled
{
  enabledCopy = enabled;
  bOOLValue = [enabledCopy BOOLValue];
  [(NCABSettingsPairedShortNameController *)self _setValue:enabledCopy forKey:NSPersonNameDefaultShortNameEnabledKey syncWithClient:1];

  shortNameFormatsSpecifiers = self->_shortNameFormatsSpecifiers;
  if (bOOLValue)
  {
    shortNameEnabledSpecifier = self->_shortNameEnabledSpecifier;

    [(NCABSettingsPairedShortNameController *)self insertContiguousSpecifiers:shortNameFormatsSpecifiers afterSpecifier:shortNameEnabledSpecifier animated:1];
  }

  else
  {

    [(NCABSettingsPairedShortNameController *)self removeContiguousSpecifiers:shortNameFormatsSpecifiers animated:1, v6];
  }
}

- (id)shortNameEnabled
{
  v2 = [(NCABSettingsPairedShortNameController *)self _getValueForKey:NSPersonNameDefaultShortNameEnabledKey];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &__kCFBooleanTrue;
  }

  v5 = v4;

  return v4;
}

- (void)setShortNameFormat:(id)format
{
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [format integerValue]);
  [(NCABSettingsPairedShortNameController *)self _setValue:v4 forKey:NSPersonNameDefaultShortNameFormatKey syncWithClient:1];
}

- (id)shortNameFormat
{
  v2 = [(NCABSettingsPairedShortNameController *)self _getValueForKey:NSPersonNameDefaultShortNameFormatKey];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[NSPersonNameComponentsFormatter _defaultShortNameFormat]);
  }

  v5 = v4;

  return v5;
}

- (id)preferNicknames
{
  v2 = [(NCABSettingsPairedShortNameController *)self _getValueForKey:NSPersonNameDefaultShouldPreferNicknamesKey];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[NSPersonNameComponentsFormatter _shouldPreferNicknames]);
  }

  v5 = v4;

  return v5;
}

- (id)_getValueForKey:(id)key
{
  foundationDomainAccessor = self->_foundationDomainAccessor;
  keyCopy = key;
  synchronize = [(NPSDomainAccessor *)foundationDomainAccessor synchronize];
  v7 = [(NPSDomainAccessor *)self->_foundationDomainAccessor objectForKey:keyCopy];

  return v7;
}

- (void)_setValue:(id)value forKey:(id)key syncWithClient:(BOOL)client
{
  clientCopy = client;
  valueCopy = value;
  keyCopy = key;
  [(NPSDomainAccessor *)self->_foundationDomainAccessor setObject:valueCopy forKey:keyCopy];
  synchronize = [(NPSDomainAccessor *)self->_foundationDomainAccessor synchronize];
  if (clientCopy)
  {
    if (self->_activePairedWatchRequiresLegacyKeys)
    {
      v14 = keyCopy;
      v15 = valueCopy;
      v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [NCABSettingsPairedController mapFoundationPreferenceKeysAndValues:v11 toLegacyDomainAccessor:self->_peoplePickerDomainAccessor withSyncManager:self->_syncManager];
    }

    else
    {
      syncManager = self->_syncManager;
      v13 = NSPersonNameDefaultNamePreferencesDomain;
      v11 = [NSSet setWithObject:keyCopy];
      [(NPSManager *)syncManager synchronizeNanoDomain:v13 keys:v11];
    }
  }
}

@end