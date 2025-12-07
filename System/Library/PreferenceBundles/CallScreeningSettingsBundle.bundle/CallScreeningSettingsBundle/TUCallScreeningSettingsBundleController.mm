@interface TUCallScreeningSettingsBundleController
+ (id)localizedStringForKey:(id)key;
- (PSListController)parentListController;
- (TUCallScreeningSettingsBundleController)initWithParentListController:(id)controller;
- (id)getCallScreeningEnabled:(id)enabled;
- (id)specifiersWithSpecifier:(id)specifier;
- (void)refreshView;
- (void)setCallScreeningEnabled:(BOOL)enabled logAnalytics:(BOOL)analytics;
- (void)setCallScreeningEnabled:(id)enabled specifier:(id)specifier;
@end

@implementation TUCallScreeningSettingsBundleController

- (TUCallScreeningSettingsBundleController)initWithParentListController:(id)controller
{
  v12.receiver = self;
  v12.super_class = TUCallScreeningSettingsBundleController;
  v3 = [(TUCallScreeningSettingsBundleController *)&v12 initWithParentListController:controller];
  if (v3)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"handleSettingDidChangeNotification:" name:@"TUCallScreeningSettingsChangedNotification" object:0];

    v5 = objc_alloc_init(_TtC27CallScreeningSettingsBundle32TUCallScreeningAnalyticsReporter);
    analyticsReporter = v3->_analyticsReporter;
    v3->_analyticsReporter = v5;

    v7 = objc_alloc_init(TUFeatureFlags);
    tuFeatureFlags = v3->_tuFeatureFlags;
    v3->_tuFeatureFlags = v7;

    if ([(TUFeatureFlags *)v3->_tuFeatureFlags deviceExpertMigrationEnabled])
    {
      v9 = objc_alloc_init(TUConfigurationProvider);
      configurationProvider = v3->_configurationProvider;
      v3->_configurationProvider = v9;

      [(TUConfigurationProvider *)v3->_configurationProvider setDelegate:v3];
    }
  }

  return v3;
}

- (id)specifiersWithSpecifier:(id)specifier
{
  v4 = +[NSMutableArray array];
  tuFeatureFlags = [(TUCallScreeningSettingsBundleController *)self tuFeatureFlags];
  if ([tuFeatureFlags deviceExpertMigrationEnabled])
  {
    configurationProvider = [(TUCallScreeningSettingsBundleController *)self configurationProvider];
    isCallScreeningAvailable = [configurationProvider isCallScreeningAvailable];

    if ((isCallScreeningAvailable & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = TUCallScreeningActivatable();

    if (!v8)
    {
      goto LABEL_11;
    }
  }

  activeSpecifier = [(TUCallScreeningSettingsBundleController *)self activeSpecifier];

  if (!activeSpecifier)
  {
    v10 = [PSSpecifier groupSpecifierWithID:@"CALL_SCREENING_GROUP" name:&stru_8688];
    v11 = [TUCallScreeningSettingsBundleController localizedStringForKey:@"CALL_SCREENING_EXPLANATION"];
    [v10 setProperty:v11 forKey:PSFooterTextGroupKey];
    if (v10)
    {
      [v4 addObject:v10];
      v12 = [TUCallScreeningSettingsBundleController localizedStringForKey:@"CALL_SCREENING_TOGGLE_TITLE"];
      v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"setCallScreeningEnabled:specifier:" get:"getCallScreeningEnabled:" detail:0 cell:6 edit:0];
      [v13 setIdentifier:@"CALL_SCREENING_ROW"];
      if (v13)
      {
        [v4 addObject:v13];
        [(TUCallScreeningSettingsBundleController *)self setActiveSpecifier:v13];
      }
    }
  }

LABEL_11:
  v14 = [v4 copy];

  return v14;
}

+ (id)localizedStringForKey:(id)key
{
  keyCopy = key;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  localizationTableName = [self localizationTableName];
  v7 = [v5 localizedStringForKey:keyCopy value:&stru_8688 table:localizationTableName];

  return v7;
}

- (PSListController)parentListController
{
  WeakRetained = objc_loadWeakRetained(&self->PSBundleController_opaque[OBJC_IVAR___PSBundleController__parent]);

  return WeakRetained;
}

- (void)refreshView
{
  parentListController = [(TUCallScreeningSettingsBundleController *)self parentListController];
  activeSpecifier = [(TUCallScreeningSettingsBundleController *)self activeSpecifier];
  [parentListController reloadSpecifier:activeSpecifier];
}

- (id)getCallScreeningEnabled:(id)enabled
{
  configurationProvider = [(TUCallScreeningSettingsBundleController *)self configurationProvider];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [configurationProvider isCallScreeningEnabled]);

  return v4;
}

- (void)setCallScreeningEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  bOOLValue = [enabledCopy BOOLValue];
  configurationProvider = [(TUCallScreeningSettingsBundleController *)self configurationProvider];
  getSelectedIntelligentCallScreeningMenuOptionForPhone = [configurationProvider getSelectedIntelligentCallScreeningMenuOptionForPhone];

  LOBYTE(configurationProvider) = [enabledCopy BOOLValue];
  if ((configurationProvider & 1) != 0 || getSelectedIntelligentCallScreeningMenuOptionForPhone != &dword_0 + 1)
  {

    [(TUCallScreeningSettingsBundleController *)self setCallScreeningEnabled:bOOLValue logAnalytics:1];
  }

  else
  {
    v10 = PHDefaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Attempting to turn off Live Voicemail when Receptionist is on", buf, 2u);
    }

    v11 = [TUCallScreeningSettingsBundleController localizedStringForKey:@"CALL_SCREENING_RECEPTIONIST_WARNING_TITLE"];
    v12 = [TUCallScreeningSettingsBundleController localizedStringForKey:@"CALL_SCREENING_RECEPTIONIST_WARNING_MESSAGE"];
    v13 = [UIAlertController alertControllerWithTitle:v11 message:v12 preferredStyle:1];
    v14 = [TUCallScreeningSettingsBundleController localizedStringForKey:@"CALL_SCREENING_RECEPTIONIST_WARNING_CONTINUE"];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_183C;
    v20[3] = &unk_8370;
    v20[4] = self;
    v21 = bOOLValue;
    v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:v20];
    [v13 addAction:v15];
    v16 = [TUCallScreeningSettingsBundleController localizedStringForKey:@"CALL_SCREENING_RECEPTIONIST_WARNING_CANCEL"];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_18C8;
    v19[3] = &unk_8398;
    v19[4] = self;
    v17 = [UIAlertAction actionWithTitle:v16 style:1 handler:v19];
    [v13 addAction:v17];
    [v13 setPreferredAction:v15];
    parentListController = [(TUCallScreeningSettingsBundleController *)self parentListController];
    [parentListController presentViewController:v13 animated:1 completion:0];
  }
}

- (void)setCallScreeningEnabled:(BOOL)enabled logAnalytics:(BOOL)analytics
{
  enabledCopy = enabled;
  if (analytics)
  {
    analyticsReporter = [(TUCallScreeningSettingsBundleController *)self analyticsReporter];
    [analyticsReporter logLiveVoiceMailToggleWithToggledTo:enabledCopy];
  }

  configurationProvider = [(TUCallScreeningSettingsBundleController *)self configurationProvider];
  [configurationProvider setCallScreeningEnabled:enabledCopy];
}

@end