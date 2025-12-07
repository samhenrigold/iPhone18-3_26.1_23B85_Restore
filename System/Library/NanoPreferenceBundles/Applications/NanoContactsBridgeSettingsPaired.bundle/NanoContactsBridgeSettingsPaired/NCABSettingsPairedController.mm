@interface NCABSettingsPairedController
+ (id)foundationKeys;
+ (id)peoplePickerKeys;
+ (void)mapFoundationPreferenceKeysAndValues:(id)values toLegacyDomainAccessor:(id)accessor withSyncManager:(id)manager;
- (NCABSettingsPairedController)init;
- (id)_getValueForKey:(id)key inDomainAccessor:(id)accessor;
- (id)contactsSortOrder:(id)order;
- (id)foundationKeysAndValuesUsingDomainAccessor:(BOOL)accessor;
- (id)localizedMirroringDetailFooter;
- (id)localizedPaneTitle;
- (id)mirroredApplicationGroupSpecifiers;
- (id)personNameOrder:(id)order;
- (void)_setValue:(id)value forKey:(id)key inDomainAccessor:(id)accessor syncWithClient:(BOOL)client;
- (void)dealloc;
- (void)setContactsSortOrder:(id)order specifier:(id)specifier;
- (void)setPersonNameOrder:(id)order specifier:(id)specifier;
- (void)synchronizeContactsSettings:(BOOL)settings;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NCABSettingsPairedController

- (NCABSettingsPairedController)init
{
  v16.receiver = self;
  v16.super_class = NCABSettingsPairedController;
  v2 = [(NCABSettingsPairedController *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    syncManager = v2->_syncManager;
    v2->_syncManager = v3;

    v5 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.PeoplePicker"];
    peoplePickerDomainAccessor = v2->_peoplePickerDomainAccessor;
    v2->_peoplePickerDomainAccessor = v5;

    v7 = [NPSDomainAccessor alloc];
    v8 = [v7 initWithDomain:NSPersonNameDefaultNamePreferencesDomain];
    foundationDomainAccessor = v2->_foundationDomainAccessor;
    v2->_foundationDomainAccessor = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_contactStoreDidChange:" name:CNContactStoreDidChangeNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000, NSPersonNamePreferencesDidChangeNotification, 0, CFNotificationSuspensionBehaviorDrop);
    v12 = +[PDRRegistry sharedInstance];
    v13 = [v12 getDevicesExcluding:4];
    firstObject = [v13 firstObject];

    if (firstObject)
    {
      PDRWatchOSVersionForRemoteDevice();
      v2->_activePairedWatchRequiresLegacyKeys = PDRVersionIsGreaterThanOrEqual() ^ 1;
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:CNContactStoreDidChangeNotification object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, NSPersonNamePreferencesDidChangeNotification, 0);
  v5.receiver = self;
  v5.super_class = NCABSettingsPairedController;
  [(NCABSettingsPairedController *)&v5 dealloc];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = NCABSettingsPairedController;
  [(NCABSettingsPairedController *)&v12 viewWillAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"CONTACTS" table:@"NanoContactsBridgeSettingsPaired" locale:v5 bundleURL:bundleURL];

  bundleIdentifier = [v3 bundleIdentifier];
  bundleIdentifier2 = [v3 bundleIdentifier];
  v10 = [NSString stringWithFormat:@"bridge:root=%@", bundleIdentifier2];
  v11 = [NSURL URLWithString:v10];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:bundleIdentifier title:v7 localizedNavigationComponents:&__NSArray0__struct deepLink:v11];
}

- (id)mirroredApplicationGroupSpecifiers
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [NSDictionary alloc];
  v5 = [v3 pathForResource:@"NanoContactsBridgeSettingsPaired" ofType:@"plist"];
  v6 = [v4 initWithContentsOfFile:v5];

  v17 = v3;
  v7 = SpecifiersFromPlist();
  v8 = [v7 count];
  if (v8 >= 1)
  {
    v9 = v8 + 1;
    do
    {
      v10 = [v7 objectAtIndex:v9 - 2];
      identifier = [v10 identifier];
      v12 = objc_msgSend_isEqualToString_(identifier);
      v13 = &OBJC_IVAR___NCABSettingsPairedController__contactsSortOrderSpecifier;
      if ((v12 & 1) != 0 || (v14 = objc_msgSend_isEqualToString_(identifier), v13 = &OBJC_IVAR___NCABSettingsPairedController__personNameOrderSpecifier, v14))
      {
        v15 = *v13;
        objc_storeStrong(&self->BPSNotificationAppController_opaque[v15], v10);
        objc_storeWeak((*&self->BPSNotificationAppController_opaque[v15] + OBJC_IVAR___PSSpecifier_target), self);
      }

      --v9;
    }

    while (v9 > 1);
  }

  return v7;
}

- (id)localizedMirroringDetailFooter
{
  SortOrdering = ABPersonGetSortOrdering();
  v3 = SortOrdering;
  v4 = NanoContactsSettingsPairedBundle(SortOrdering);
  v5 = v4;
  if (v3)
  {
    v6 = @"LAST";
  }

  else
  {
    v6 = @"FIRST";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];

  v8 = +[NSPersonNameComponentsFormatter _defaultDisplayNameOrder];
  if (v8 == &dword_0 + 1)
  {
    v9 = @"FIRST";
  }

  else
  {
    v9 = @"LAST";
  }

  v10 = NanoContactsSettingsPairedBundle(v8);
  v11 = [v10 localizedStringForKey:v9 value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];

  v13 = NanoContactsSettingsPairedBundle(v12);
  v14 = [v13 localizedStringForKey:@"SETTING_DESCRIPTION_LINE_FORMAT_WITH_COLON" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
  v15 = NanoContactsSettingsPairedBundle(v14);
  v16 = [v15 localizedStringForKey:@"Sort Order" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
  v17 = [NSMutableString stringWithFormat:v14, v16, v7];

  v19 = NanoContactsSettingsPairedBundle(v18);
  v20 = [v19 localizedStringForKey:@"SETTING_DESCRIPTION_LINE_FORMAT_WITH_COLON" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
  v21 = NanoContactsSettingsPairedBundle(v20);
  v22 = [v21 localizedStringForKey:@"Display Order" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
  [v17 appendFormat:v20, v22, v11];

  if (+[NSPersonNameComponentsFormatter _shortNameIsEnabled])
  {
    v23 = +[NSPersonNameComponentsFormatter _defaultShortNameFormat];
    v24 = NanoContactsSettingsPairedBundle(v23);
    v25 = v24;
    if ((v23 - 1) > 3)
    {
      v26 = @"SHORT_NAME_FORMAT_FIRST_ONLY";
    }

    else
    {
      v26 = *(&off_8330 + (v23 - 1));
    }

    v27 = [v24 localizedStringForKey:v26 value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];

    v29 = NanoContactsSettingsPairedBundle(v28);
    v30 = [v29 localizedStringForKey:@"SETTING_DESCRIPTION_LINE_FORMAT_WITH_COLON" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
    v31 = NanoContactsSettingsPairedBundle(v30);
    v32 = [v31 localizedStringForKey:@"Short Name" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
    [v17 appendFormat:v30, v32, v27];
  }

  v33 = +[NSPersonNameComponentsFormatter _shouldPreferNicknames];
  v34 = v33;
  v35 = NanoContactsSettingsPairedBundle(v33);
  v36 = v35;
  if (v34)
  {
    v37 = @"ON";
  }

  else
  {
    v37 = @"OFF";
  }

  v38 = [v35 localizedStringForKey:v37 value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];

  v40 = NanoContactsSettingsPairedBundle(v39);
  v41 = [v40 localizedStringForKey:@"SETTING_DESCRIPTION_LINE_FORMAT_WITH_COLON" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
  v42 = NanoContactsSettingsPairedBundle(v41);
  v43 = [v42 localizedStringForKey:@"Prefer Nicknames" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];
  [v17 appendFormat:v41, v43, v38];

  return v17;
}

- (id)localizedPaneTitle
{
  v2 = NanoContactsSettingsPairedBundle(self);
  v3 = [v2 localizedStringForKey:@"CONTACTS" value:&stru_8450 table:@"NanoContactsBridgeSettingsPaired"];

  return v3;
}

- (id)contactsSortOrder:(id)order
{
  v3 = [(NCABSettingsPairedController *)self _getValueForKey:@"contactsSortOrder" inDomainAccessor:self->_peoplePickerDomainAccessor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [NSNumber numberWithUnsignedInt:ABPersonGetSortOrdering()];
  }

  v6 = v5;

  return v6;
}

- (void)setContactsSortOrder:(id)order specifier:(id)specifier
{
  v5 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [order intValue]);
  [(NCABSettingsPairedController *)self _setValue:v5 forKey:@"contactsSortOrder" inDomainAccessor:self->_peoplePickerDomainAccessor syncWithClient:1];
}

- (id)personNameOrder:(id)order
{
  v3 = [(NCABSettingsPairedController *)self _getValueForKey:NSPersonNameDefaultDisplayNameOrderKey inDomainAccessor:self->_foundationDomainAccessor];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[NSPersonNameComponentsFormatter _defaultDisplayNameOrder]);
  }

  v6 = v5;

  return v6;
}

- (void)setPersonNameOrder:(id)order specifier:(id)specifier
{
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [order integerValue]);
  [(NCABSettingsPairedController *)self _setValue:v5 forKey:NSPersonNameDefaultDisplayNameOrderKey inDomainAccessor:self->_foundationDomainAccessor syncWithClient:1];
}

- (void)synchronizeContactsSettings:(BOOL)settings
{
  settingsCopy = settings;
  peoplePickerKeys = [objc_opt_class() peoplePickerKeys];
  foundationKeys = [objc_opt_class() foundationKeys];
  syncManager = self->_syncManager;
  if (settingsCopy)
  {
    domain = [(NPSDomainAccessor *)self->_peoplePickerDomainAccessor domain];
    [(NPSManager *)syncManager synchronizeNanoDomain:domain keys:peoplePickerKeys];

    if (!self->_activePairedWatchRequiresLegacyKeys)
    {
      v8 = self->_syncManager;
      domain2 = [(NPSDomainAccessor *)self->_foundationDomainAccessor domain];
      [(NPSManager *)v8 synchronizeNanoDomain:domain2 keys:foundationKeys];
    }
  }

  else
  {
    [(NPSManager *)self->_syncManager synchronizeUserDefaultsDomain:@"com.apple.PeoplePicker" keys:peoplePickerKeys];
    if (!self->_activePairedWatchRequiresLegacyKeys)
    {
      [(NPSManager *)self->_syncManager synchronizeUserDefaultsDomain:NSPersonNameDefaultNamePreferencesDomain keys:foundationKeys];
    }
  }

  if (self->_activePairedWatchRequiresLegacyKeys)
  {
    v10 = objc_opt_class();
    v11 = [(NCABSettingsPairedController *)self foundationKeysAndValuesUsingDomainAccessor:settingsCopy];
    [v10 mapFoundationPreferenceKeysAndValues:v11 toLegacyDomainAccessor:self->_peoplePickerDomainAccessor withSyncManager:self->_syncManager];
  }
}

+ (id)peoplePickerKeys
{
  if (qword_C6D8 != -1)
  {
    sub_33C4();
  }

  v3 = qword_C6D0;

  return v3;
}

+ (id)foundationKeys
{
  if (qword_C6E8 != -1)
  {
    sub_33D8();
  }

  v3 = qword_C6E0;

  return v3;
}

- (id)foundationKeysAndValuesUsingDomainAccessor:(BOOL)accessor
{
  if (accessor)
  {
    v4 = NSPersonNameDefaultDisplayNameOrderKey;
    v5 = [(NPSDomainAccessor *)self->_foundationDomainAccessor objectForKey:NSPersonNameDefaultDisplayNameOrderKey];
    if (v5)
    {
      v6 = [(NPSDomainAccessor *)self->_foundationDomainAccessor integerForKey:v4];
    }

    else
    {
      v6 = +[NSPersonNameComponentsFormatter _defaultDisplayNameOrder];
    }

    v7 = v6;

    v11 = NSPersonNameDefaultShortNameEnabledKey;
    v14 = [(NPSDomainAccessor *)self->_foundationDomainAccessor objectForKey:NSPersonNameDefaultShortNameEnabledKey];
    if (v14)
    {
      v15 = [(NPSDomainAccessor *)self->_foundationDomainAccessor BOOLForKey:v11];
    }

    else
    {
      v15 = +[NSPersonNameComponentsFormatter _shortNameIsEnabled];
    }

    v8 = v15;

    v12 = NSPersonNameDefaultShortNameFormatKey;
    v16 = [(NPSDomainAccessor *)self->_foundationDomainAccessor objectForKey:NSPersonNameDefaultShortNameFormatKey];
    if (v16)
    {
      v17 = [(NPSDomainAccessor *)self->_foundationDomainAccessor integerForKey:v12];
    }

    else
    {
      v17 = +[NSPersonNameComponentsFormatter _defaultShortNameFormat];
    }

    v9 = v17;

    v13 = NSPersonNameDefaultShouldPreferNicknamesKey;
    v18 = [(NPSDomainAccessor *)self->_foundationDomainAccessor objectForKey:NSPersonNameDefaultShouldPreferNicknamesKey];
    if (v18)
    {
      v19 = [(NPSDomainAccessor *)self->_foundationDomainAccessor BOOLForKey:v13];
    }

    else
    {
      v19 = +[NSPersonNameComponentsFormatter _shouldPreferNicknames];
    }

    v10 = v19;
  }

  else
  {
    v7 = +[NSPersonNameComponentsFormatter _defaultDisplayNameOrder];
    v8 = +[NSPersonNameComponentsFormatter _shortNameIsEnabled];
    v9 = +[NSPersonNameComponentsFormatter _defaultShortNameFormat];
    v10 = +[NSPersonNameComponentsFormatter _shouldPreferNicknames];
    v4 = NSPersonNameDefaultDisplayNameOrderKey;
    v11 = NSPersonNameDefaultShortNameEnabledKey;
    v12 = NSPersonNameDefaultShortNameFormatKey;
    v13 = NSPersonNameDefaultShouldPreferNicknamesKey;
  }

  v26[0] = v4;
  v20 = [NSNumber numberWithInteger:v7];
  v27[0] = v20;
  v26[1] = v11;
  v21 = [NSNumber numberWithBool:v8];
  v27[1] = v21;
  v26[2] = v12;
  v22 = [NSNumber numberWithInteger:v9];
  v27[2] = v22;
  v26[3] = v13;
  v23 = [NSNumber numberWithBool:v10];
  v27[3] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];

  return v24;
}

- (id)_getValueForKey:(id)key inDomainAccessor:(id)accessor
{
  accessorCopy = accessor;
  keyCopy = key;
  synchronize = [accessorCopy synchronize];
  v8 = [accessorCopy objectForKey:keyCopy];

  return v8;
}

- (void)_setValue:(id)value forKey:(id)key inDomainAccessor:(id)accessor syncWithClient:(BOOL)client
{
  clientCopy = client;
  valueCopy = value;
  keyCopy = key;
  accessorCopy = accessor;
  [accessorCopy setObject:valueCopy forKey:keyCopy];
  synchronize = [accessorCopy synchronize];
  if (clientCopy)
  {
    syncManager = self->_syncManager;
    domain = [accessorCopy domain];
    v16 = [NSSet setWithObject:keyCopy];
    [(NPSManager *)syncManager synchronizeNanoDomain:domain keys:v16];

    if (self->_activePairedWatchRequiresLegacyKeys)
    {
      foundationKeys = [objc_opt_class() foundationKeys];
      v18 = [foundationKeys containsObject:keyCopy];

      if (v18)
      {
        v19 = objc_opt_class();
        v21 = keyCopy;
        v22 = valueCopy;
        v20 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        [v19 mapFoundationPreferenceKeysAndValues:v20 toLegacyDomainAccessor:self->_peoplePickerDomainAccessor withSyncManager:self->_syncManager];
      }
    }
  }
}

+ (void)mapFoundationPreferenceKeysAndValues:(id)values toLegacyDomainAccessor:(id)accessor withSyncManager:(id)manager
{
  accessorCopy = accessor;
  managerCopy = manager;
  valuesCopy = values;
  v10 = +[NSMutableSet set];
  v11 = [NSPersonNameComponentsFormatterPreferences mappedPreferencesForPreferences:valuesCopy from:0 to:2];

  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_22F4;
  v19 = &unk_8310;
  v20 = accessorCopy;
  v21 = v10;
  v12 = v10;
  v13 = accessorCopy;
  [v11 enumerateKeysAndObjectsUsingBlock:&v16];
  synchronize = [v13 synchronize];
  domain = [v13 domain];
  [managerCopy synchronizeNanoDomain:domain keys:v12];
}

@end