@interface EACellBroadcastSwitchExtension
- (BOOL)readCustomPrefForKey:(id)key withDefault:(BOOL)default;
- (EACellBroadcastSwitchExtension)init;
- (id)getAlertState;
- (id)getAlwaysDeliverState;
- (id)getEnhancedDeliveryState;
- (id)readAlertState:(id)state;
- (id)specifiers;
- (void)addAlwaysDeliverOption;
- (void)addEnhancedDeliveryOption;
- (void)addRootAlertSwitch;
- (void)removeAlwaysDeliverOption;
- (void)removeEnhancedDeliveryOption;
- (void)resetItems;
- (void)setAlertState:(id)state;
- (void)setAlertStateforKey:(id)key withValue:(id)value;
- (void)setCustomPreferenceForKey:(id)key withValue:(id)value;
@end

@implementation EACellBroadcastSwitchExtension

- (void)resetItems
{
  cmasSwitch = self->_cmasSwitch;
  self->_cmasSwitch = 0;

  alwaysDeliverSwitch = self->_alwaysDeliverSwitch;
  self->_alwaysDeliverSwitch = 0;

  alertDict = self->_alertDict;
  self->_alertDict = 0;

  alertKey = self->_alertKey;
  self->_alertKey = 0;

  v7 = objc_opt_new();
  specifierArray = self->_specifierArray;
  self->_specifierArray = v7;

  v9 = [PSSpecifier groupSpecifierWithID:@"CUSTOM_SPECIFIER_ROOT"];
  rootGroupSpecifier = self->_rootGroupSpecifier;
  self->_rootGroupSpecifier = v9;

  v11 = [PSSpecifier groupSpecifierWithID:@"CUSTOM_SPECIFIER_ALWAYS_DELIVER"];
  alwaysDeliverGroupSpecifier = self->_alwaysDeliverGroupSpecifier;
  self->_alwaysDeliverGroupSpecifier = v11;

  v13 = [PSSpecifier groupSpecifierWithID:@"CUSTOM_SPECIFIER_ADV"];
  groupSpecifierForEnhancedDelivery = self->_groupSpecifierForEnhancedDelivery;
  self->_groupSpecifierForEnhancedDelivery = v13;

  advancedEarthquakeWarningSwitch = self->_advancedEarthquakeWarningSwitch;
  self->_advancedEarthquakeWarningSwitch = 0;
}

- (EACellBroadcastSwitchExtension)init
{
  v5.receiver = self;
  v5.super_class = EACellBroadcastSwitchExtension;
  v2 = [(EACellBroadcastSwitchExtension *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(EACellBroadcastSwitchExtension *)v2 resetItems];
  }

  return v3;
}

- (void)setCustomPreferenceForKey:(id)key withValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = _CTServerConnectionCreate();
  if (v8)
  {
    v9 = v8;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"AlertType", self->_alertKey);
    bOOLValue = [valueCopy BOOLValue];
    v12 = &kCFBooleanTrue;
    if (!bOOLValue)
    {
      v12 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(Mutable, keyCopy, *v12);
    v14 = getLogger(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      alertKey = self->_alertKey;
      bOOLValue2 = [valueCopy BOOLValue];
      v17 = @"disabled";
      if (bOOLValue2)
      {
        v17 = @"enabled";
      }

      v18 = v17;
      *buf = 138543874;
      v25 = alertKey;
      v26 = 2114;
      v27 = keyCopy;
      v28 = 2114;
      v29 = v18;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Storing custom user pref for %{public}@ - [%{public}@: %{public}@]", buf, 0x20u);
    }

    v19 = _CTServerConnectionSetCellBroadcastCustomPrefForAlertType();
    v20 = getLogger(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v25 = v19 >> 32;
      v26 = 1024;
      LODWORD(v27) = 0;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Error code: %ld, Did succeed: %d", buf, 0x12u);
    }

    v22 = getLogger(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Custom preference stored successfully", buf, 2u);
    }

    CFRelease(v9);
    CFRelease(Mutable);
  }

  else
  {
    v23 = getLogger(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Error in creating connection to Telephony", buf, 2u);
    }
  }
}

- (void)setAlertStateforKey:(id)key withValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v8 = _CTServerConnectionCreate();
  if (v8)
  {
    v9 = v8;
    bOOLValue = [valueCopy BOOLValue];
    v11 = bOOLValue;
    v12 = getLogger(bOOLValue);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      alertKey = self->_alertKey;
      v14 = @"disabled";
      if (v11)
      {
        v14 = @"enabled";
      }

      v15 = v14;
      *buf = 138412546;
      v20 = alertKey;
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Storing alert state for %@: %@", buf, 0x16u);
    }

    v16 = _CTServerConnectionSetCellBroadcastSettingForAlertType();
    v17 = getLogger(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v20 = v16 >> 32;
      v21 = 1024;
      LODWORD(v22) = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Error code: %ld, Did succeed: %d", buf, 0x12u);
    }

    CFRelease(v9);
  }

  else
  {
    v18 = getLogger(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Error in creating server connection", buf, 2u);
    }
  }
}

- (id)readAlertState:(id)state
{
  stateCopy = state;
  v5 = _CTServerConnectionCreate();
  if (v5)
  {
    v6 = v5;
    CellBroadcastSettingForAlertType = _CTServerConnectionGetCellBroadcastSettingForAlertType();
    if (HIDWORD(CellBroadcastSettingForAlertType))
    {
      v8 = CellBroadcastSettingForAlertType;
      v9 = getLogger(CellBroadcastSettingForAlertType);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v19 = v8;
        v20 = 2048;
        v21 = v8 >> 32;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Error with CT: domain %ld code %ld ", buf, 0x16u);
      }
    }

    v10 = getLogger(CellBroadcastSettingForAlertType);
    v11 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_24FC();
    }

    CFRelease(v6);
    v15 = [NSNumber numberWithBool:0, 0, 0, 0, 0, 0];
  }

  else
  {
    v12 = [(NSDictionary *)self->_alertDict objectForKey:@"EnabledByDefault", 0, 0, 0, 0, 0];
    v13 = v12;
    if (v12)
    {
      bOOLValue = [v12 BOOLValue];
    }

    else
    {
      v14 = getLogger(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Malformed EnabledByDefault payload", buf, 2u);
      }

      bOOLValue = 0;
    }

    v15 = [NSNumber numberWithBool:bOOLValue];
  }

  return v15;
}

- (BOOL)readCustomPrefForKey:(id)key withDefault:(BOOL)default
{
  keyCopy = key;
  v7 = _CTServerConnectionCreate();
  if (v7)
  {
    v8 = v7;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"AlertType", self->_alertKey);
    v11 = getLogger(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      alertKey = self->_alertKey;
      *buf = 138412290;
      v18 = alertKey;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Reading custom pref for %@", buf, 0xCu);
    }

    CellBroadcastCustomPrefForAlertType = _CTServerConnectionGetCellBroadcastCustomPrefForAlertType();
    if (HIDWORD(CellBroadcastCustomPrefForAlertType))
    {
      v15 = getLogger(CellBroadcastCustomPrefForAlertType);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_253C();
      }
    }

    else
    {
      v15 = getLogger(CellBroadcastCustomPrefForAlertType);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_264C();
      }
    }

    CFRelease(v8);
    CFRelease(Mutable);
  }

  else
  {
    v14 = getLogger(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Error creating Server connection", buf, 2u);
    }
  }

  return default;
}

- (id)getEnhancedDeliveryState
{
  v3 = [(EACellBroadcastSwitchExtension *)self readCustomPrefForKey:@"EnhancedDeliveryPref" withDefault:0];
  v4 = getLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_26C4(self, v3);
  }

  v5 = [NSNumber numberWithBool:v3];

  return v5;
}

- (void)removeEnhancedDeliveryOption
{
  if (self->_advancedEarthquakeWarningSwitch)
  {
    [(NSMutableArray *)self->_specifierArray removeObject:?];
    advancedEarthquakeWarningSwitch = self->_advancedEarthquakeWarningSwitch;
    self->_advancedEarthquakeWarningSwitch = 0;
  }
}

- (void)addEnhancedDeliveryOption
{
  v3 = getLogger(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Visited Enhanced Delivery page.", buf, 2u);
  }

  v4 = +[SafetyAlerts sharedInterface];
  [v4 onEnhancedDeliveryPageVisited];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ENHANCED_DELIVERY_SWITCH_NAME" value:&stru_4380 table:@"Localizable~IGNEOUS"];

  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"ENHANCED_DELIVERY_DESCRIPTION" value:&stru_4380 table:@"Localizable~IGNEOUS"];

  v9 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:"setEnhancedDeliveryState:" get:"getEnhancedDeliveryState" detail:0 cell:6 edit:0];
  advancedEarthquakeWarningSwitch = self->_advancedEarthquakeWarningSwitch;
  self->_advancedEarthquakeWarningSwitch = v9;

  [(PSSpecifier *)self->_groupSpecifierForEnhancedDelivery setProperty:v8 forKey:PSFooterTextGroupKey];
  [(NSMutableArray *)self->_specifierArray ps_addSpecifier:self->_advancedEarthquakeWarningSwitch toGroup:self->_groupSpecifierForEnhancedDelivery];
}

- (void)addAlwaysDeliverOption
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"ALWAYS_DELIVER" value:&stru_4380 table:@"Localizable"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setAlwaysDeliverState:" get:"getAlwaysDeliverState" detail:0 cell:6 edit:0];
  alwaysDeliverSwitch = self->_alwaysDeliverSwitch;
  self->_alwaysDeliverSwitch = v5;

  alwaysDeliverGroupSpecifier = self->_alwaysDeliverGroupSpecifier;
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"ALWAYS_DELIVER_MESSAGE" value:&stru_4380 table:@"Localizable"];
  [(PSSpecifier *)alwaysDeliverGroupSpecifier setProperty:v9 forKey:PSFooterTextGroupKey];

  specifierArray = self->_specifierArray;
  v11 = self->_alwaysDeliverSwitch;
  v12 = self->_alwaysDeliverGroupSpecifier;

  [(NSMutableArray *)specifierArray ps_addSpecifier:v11 toGroup:v12];
}

- (void)removeAlwaysDeliverOption
{
  if (self->_alwaysDeliverSwitch)
  {
    [(NSMutableArray *)self->_specifierArray removeObject:?];
    alwaysDeliverSwitch = self->_alwaysDeliverSwitch;
    self->_alwaysDeliverSwitch = 0;
  }
}

- (id)getAlwaysDeliverState
{
  v3 = [(EACellBroadcastSwitchExtension *)self readCustomPrefForKey:@"AlwaysDeliverPref" withDefault:0];
  v4 = getLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_2770(self, v3);
  }

  v5 = [NSNumber numberWithBool:v3];

  return v5;
}

- (void)addRootAlertSwitch
{
  v4 = [(NSDictionary *)self->_alertDict objectForKey:@"SwitchName"];
  v3 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setAlertState:" get:"getAlertState" detail:0 cell:6 edit:0];
  [(NSMutableArray *)self->_specifierArray ps_addSpecifier:v3 toGroup:self->_rootGroupSpecifier];
}

- (id)getAlertState
{
  if (self->_alertKey)
  {
    [(EACellBroadcastSwitchExtension *)self readAlertState:?];
  }

  else
  {
    [NSNumber numberWithBool:?];
  }
  v2 = ;

  return v2;
}

- (void)setAlertState:(id)state
{
  alertKey = self->_alertKey;
  stateCopy = state;
  [(EACellBroadcastSwitchExtension *)self setAlertStateforKey:alertKey withValue:stateCopy];
  bOOLValue = [stateCopy BOOLValue];

  v8 = getLogger(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (bOOLValue)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Adding Advanced options", buf, 2u);
    }

    [(EACellBroadcastSwitchExtension *)self addAlwaysDeliverOption];
    [(EACellBroadcastSwitchExtension *)self addEnhancedDeliveryOption];
  }

  else
  {
    if (v9)
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Removing Advanced options", v10, 2u);
    }

    [(EACellBroadcastSwitchExtension *)self removeAlwaysDeliverOption];
    [(EACellBroadcastSwitchExtension *)self removeEnhancedDeliveryOption];
  }
}

- (id)specifiers
{
  selfCopy = self;
  [(EACellBroadcastSwitchExtension *)self resetItems];
  specifier = [(EACellBroadcastSwitchExtension *)selfCopy specifier];
  v4 = [specifier propertyForKey:@"AlertKey"];
  alertKey = selfCopy->_alertKey;
  selfCopy->_alertKey = v4;

  specifier2 = [(EACellBroadcastSwitchExtension *)selfCopy specifier];
  v7 = [specifier2 propertyForKey:@"AlertDetail"];
  alertDict = selfCopy->_alertDict;
  selfCopy->_alertDict = v7;

  v10 = getLogger(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = selfCopy->_alertKey;
    v12 = selfCopy->_alertDict;
    *buf = 138412546;
    v40 = v11;
    v41 = 2112;
    v42 = v12;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Custom settings for %@ - %@", buf, 0x16u);
  }

  v13 = [(EACellBroadcastSwitchExtension *)selfCopy readAlertState:selfCopy->_alertKey];
  [(NSMutableArray *)selfCopy->_specifierArray addObject:selfCopy->_rootGroupSpecifier];
  [(EACellBroadcastSwitchExtension *)selfCopy addRootAlertSwitch];
  bOOLValue = [v13 BOOLValue];
  v15 = bOOLValue;
  v16 = getLogger(bOOLValue);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Root alert is enabled - Adding other options", buf, 2u);
    }

    v18 = [(NSDictionary *)selfCopy->_alertDict objectForKeyedSubscript:@"CustomPreferences"];
    v16 = v18;
    if (!v18 || (v18 = [v18 count], v18 >= 3))
    {
      v19 = getLogger(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_281C();
      }

      goto LABEL_30;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = v16;
    v20 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v20)
    {

      goto LABEL_30;
    }

    v21 = v20;
    v32 = v13;
    v33 = selfCopy;
    v22 = 0;
    v23 = 0;
    v24 = *v35;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v16);
        }

        v26 = *(*(&v34 + 1) + 8 * i);
        v27 = [v26 objectForKeyedSubscript:@"ShowAlwaysDeliverSwitch"];

        if (v27)
        {
          v22 = 1;
        }

        else
        {
          v28 = [v26 objectForKeyedSubscript:@"EnableEnhancedDelivery"];

          v23 |= v28 != 0;
        }
      }

      v21 = [v16 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v21);

    if (v23)
    {
      selfCopy = v33;
      [(NSMutableArray *)v33->_specifierArray addObject:v33->_groupSpecifierForEnhancedDelivery];
      [(EACellBroadcastSwitchExtension *)v33 addEnhancedDeliveryOption];
      if ((v22 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      selfCopy = v33;
      if ((v22 & 1) == 0)
      {
LABEL_29:
        v13 = v32;
        goto LABEL_30;
      }
    }

    [(NSMutableArray *)selfCopy->_specifierArray addObject:selfCopy->_alwaysDeliverGroupSpecifier];
    [(EACellBroadcastSwitchExtension *)selfCopy addAlwaysDeliverOption];
    goto LABEL_29;
  }

  if (v17)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Root alert is disabled - not adding other customizations", buf, 2u);
  }

LABEL_30:

  objc_storeStrong(&selfCopy->PSListController_opaque[OBJC_IVAR___PSListController__specifiers], selfCopy->_specifierArray);
  specifierArray = selfCopy->_specifierArray;
  v30 = specifierArray;

  return specifierArray;
}

@end