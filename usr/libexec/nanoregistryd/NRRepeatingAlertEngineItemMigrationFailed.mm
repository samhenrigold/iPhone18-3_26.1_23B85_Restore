@interface NRRepeatingAlertEngineItemMigrationFailed
- (id)string:(unint64_t)string localized:(BOOL)localized;
- (void)alternateButtonWasPressed;
@end

@implementation NRRepeatingAlertEngineItemMigrationFailed

- (id)string:(unint64_t)string localized:(BOOL)localized
{
  localizedCopy = localized;
  if (string == 1 && ([(NRRepeatingAlertEngineItem *)self device], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    device = [(NRRepeatingAlertEngineItem *)self device];
    v9 = [device propertyForName:NRDevicePropertyName];
    value = [v9 value];

    v11 = [NSBundle bundleWithIdentifier:@"com.apple.private.NanoRegistry"];
    v12 = [v11 localizedStringForKey:@"MIGRATION_FAILED_MESSAGE_%@" value:&stru_10017A258 table:@"Localizable"];
    v13 = [NSString stringWithFormat:v12, value];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NRRepeatingAlertEngineItemMigrationFailed;
    v13 = [(NRRepeatingAlertEngineItem *)&v15 string:string localized:localizedCopy];
  }

  return v13;
}

- (void)alternateButtonWasPressed
{
  v2 = +[NRQueue registryDaemonQueue];
  [v2 dispatchAsync:&stru_100179748];
}

@end