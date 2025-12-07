@interface BatteryPowerModeController
- (BOOL)isBatterySaverModeEnabled;
- (BatteryPowerModeController)init;
- (id)getBatterySaverMode:(id)mode;
- (id)getIBLMNotificationsState:(id)state;
- (id)getIBLMState:(id)state;
- (id)specifiers;
- (void)_lowPowerModeChangedNotification:(id)notification;
- (void)animateSwitchSpecifier:(id)specifier toState:(BOOL)state;
- (void)dealloc;
- (void)setBatterySaverMode:(id)mode withSpecifier:(id)specifier;
- (void)setIBLMNotificationsState:(id)state withSpecifier:(id)specifier;
- (void)setIBLMState:(id)state withSpecifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation BatteryPowerModeController

- (BatteryPowerModeController)init
{
  v7.receiver = self;
  v7.super_class = BatteryPowerModeController;
  v2 = [(BatteryPowerModeController *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.batteryui.powermode", "");
    if (!v3)
    {
      v3 = &_os_log_default;
      v4 = &_os_log_default;
    }

    if (!+[BatteryUIResourceClass inDemoMode](BatteryUIResourceClass, "inDemoMode") || (+[BatteryUIResourceClass containerPath], (v5 = _CFPreferencesCopyValueWithContainer()) == 0))
    {
      v5 = BatteryUILocalization(@"POWER_MODE_TITLE");
    }

    [(BatteryPowerModeController *)v2 setTitle:v5];
  }

  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = BatteryPowerModeController;
  [(BatteryPowerModeController *)&v4 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_lowPowerModeChangedNotification:" name:NSProcessInfoPowerStateDidChangeNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSProcessInfoPowerStateDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = BatteryPowerModeController;
  [(BatteryPowerModeController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = BUILogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_114784(v3);
  }

  v4 = OBJC_IVAR___PSListController__specifiers;
  v5 = *&self->PSListItemsController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v5)
  {
    v6 = +[NSMutableArray array];
    v7 = [PSSpecifier groupSpecifierWithID:0];
    v8 = +[UIDevice currentDevice];
    sf_inRetailKioskMode = [v8 sf_inRetailKioskMode];

    v11 = BUILogCommon(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1147C8(v11);
    }

    if (+[_OSIBLMState isIBLMSupported])
    {
      v28 = [PSSpecifier groupSpecifierWithID:0];
      v30 = v7;
      BatteryUILocalization(@"IBLM_TITLE");
      v12 = v29 = sf_inRetailKioskMode;
      v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:"setIBLMState:withSpecifier:" get:"getIBLMState:" detail:0 cell:6 edit:0];

      [v13 setIdentifier:@"IBLM_CELL_IDENTIFIER"];
      v14 = objc_opt_class();
      v15 = PSCellClassKey;
      [v13 setObject:v14 forKeyedSubscript:PSCellClassKey];
      v16 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
      v17 = PSTableCellHeightKey;
      [v13 setObject:v16 forKeyedSubscript:PSTableCellHeightKey];

      v18 = BatteryUILocalization(@"IBLM_FOOTER_TEXT");
      [v28 setProperty:v18 forKey:PSFooterTextGroupKey];

      v19 = BatteryUILocalization(@"IBLM_NOTIFICATIONS_TITLE");
      v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:"setIBLMNotificationsState:withSpecifier:" get:"getIBLMNotificationsState:" detail:0 cell:6 edit:0];

      [v20 setIdentifier:@"IBLM_NOTIFICATIONS_IDENTIFIER"];
      [v20 setObject:objc_opt_class() forKeyedSubscript:v15];
      v21 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
      [v20 setObject:v21 forKeyedSubscript:v17];

      sf_inRetailKioskMode = v29;
      [v6 addObject:v28];
      [v6 addObject:v13];
      [v6 addObject:v20];

      v7 = v30;
    }

    if (!(sf_inRetailKioskMode & 1 | ((+[PLModelingUtilities isLowPowerModeSupported]& 1) == 0)))
    {
      v22 = BatteryUILocalization(@"BATTERY_SAVER_MODE");
      v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:"setBatterySaverMode:withSpecifier:" get:"getBatterySaverMode:" detail:0 cell:6 edit:0];

      [v23 setIdentifier:@"LOW_POWER_MODE_IDENTIFIER"];
      [v23 setObject:objc_opt_class() forKeyedSubscript:PSCellClassKey];
      v24 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
      [v23 setObject:v24 forKeyedSubscript:PSTableCellHeightKey];

      v25 = +[PLBatteryUIUtilities localizedLPMFooterString];
      [v7 setProperty:v25 forKey:PSFooterTextGroupKey];
      [v6 addObject:v7];
      [v6 addObject:v23];
    }

    v26 = *&self->PSListItemsController_opaque[v4];
    *&self->PSListItemsController_opaque[v4] = v6;

    v5 = *&self->PSListItemsController_opaque[v4];
  }

  return v5;
}

- (id)getBatterySaverMode:(id)mode
{
  isBatterySaverModeEnabled = [(BatteryPowerModeController *)self isBatterySaverModeEnabled];

  return [NSNumber numberWithBool:isBatterySaverModeEnabled];
}

- (void)setBatterySaverMode:(id)mode withSpecifier:(id)specifier
{
  modeCopy = mode;
  v6 = +[_PMLowPowerMode sharedInstance];
  intValue = [modeCopy intValue];

  [v6 setPowerMode:intValue != 0 fromSource:kPMLPMSourceSettings withCompletion:&stru_164FA8];
}

- (BOOL)isBatterySaverModeEnabled
{
  v2 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [v2 isLowPowerModeEnabled];

  return isLowPowerModeEnabled;
}

- (void)_lowPowerModeChangedNotification:(id)notification
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3BBD8;
  v5[3] = &unk_163EB8;
  notificationCopy = notification;
  selfCopy = self;
  v4 = notificationCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)animateSwitchSpecifier:(id)specifier toState:(BOOL)state
{
  stateCopy = state;
  specifierCopy = specifier;
  v6 = +[BatteryUIResourceClass get_log_handle_bui];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1148E0(specifierCopy, stateCopy, v6);
  }

  v7 = [specifierCopy objectForKeyedSubscript:PSTableCellKey];
  control = [v7 control];
  [control setOn:stateCopy animated:1];
}

- (id)getIBLMState:(id)state
{
  v3 = +[_OSIBLMState sharedInstance];
  isIBLMCurrentlyEnabled = [v3 isIBLMCurrentlyEnabled];

  return [NSNumber numberWithBool:isIBLMCurrentlyEnabled];
}

- (void)setIBLMState:(id)state withSpecifier:(id)specifier
{
  bOOLValue = [state BOOLValue];
  AnalyticsSendEventLazy();
  v6 = +[_OSIBLMState sharedInstance];
  [v6 client:@"BatteryUI" setIBLMState:bOOLValue];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"POWER_MODE_CHANGE_NOTIFICATION_NAME" object:0];

  [(BatteryPowerModeController *)self reloadSpecifierID:@"IBLM_NOTIFICATIONS_IDENTIFIER" animated:1];
}

- (id)getIBLMNotificationsState:(id)state
{
  stateCopy = state;
  v5 = +[_OSIBLMState sharedInstance];
  isIBLMCurrentlyEnabled = [v5 isIBLMCurrentlyEnabled];

  v7 = [NSNumber numberWithBool:isIBLMCurrentlyEnabled];
  [stateCopy setProperty:v7 forKey:PSEnabledKey];

  v8 = +[_OSIBLMState sharedInstance];
  isIBLMNotificationsCurrentlyEnabled = [v8 isIBLMNotificationsCurrentlyEnabled];

  [(BatteryPowerModeController *)self animateSwitchSpecifier:stateCopy toState:isIBLMCurrentlyEnabled & isIBLMNotificationsCurrentlyEnabled];

  return [NSNumber numberWithBool:isIBLMCurrentlyEnabled & isIBLMNotificationsCurrentlyEnabled];
}

- (void)setIBLMNotificationsState:(id)state withSpecifier:(id)specifier
{
  bOOLValue = [state BOOLValue];
  v5 = +[_OSIBLMState sharedInstance];
  [v5 client:@"BatteryUI" setIBLMNotificationsState:bOOLValue];
}

@end