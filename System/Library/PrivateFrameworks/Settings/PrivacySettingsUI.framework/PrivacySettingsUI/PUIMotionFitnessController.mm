@interface PUIMotionFitnessController
- (BOOL)isFitnessTrackingEnabledFromTCC;
- (id)_appSpecifiers;
- (id)loadSensorKitSpecifiersProvider;
- (id)specifiers;
- (void)provideNavigationDonations;
- (void)setFitnessTrackingEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PUIMotionFitnessController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    isFitnessTrackingEnabledFromTCC = [(PUIMotionFitnessController *)self isFitnessTrackingEnabledFromTCC];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = *MEMORY[0x277D3FFB8];
    [emptyGroupSpecifier setProperty:@"FITNESS_TRACKING_GROUP" forKey:*MEMORY[0x277D3FFB8]];
    v8 = PUI_LocalizedStringForPrivacy(@"FITNESS_TRACKING_PRIVACY");
    [emptyGroupSpecifier setProperty:v8 forKey:*MEMORY[0x277D3FF88]];

    v9 = MEMORY[0x277D3FAD8];
    v10 = PUI_LocalizedStringForPrivacy(@"FITNESS_TRACKING");
    v11 = [v9 preferenceSpecifierNamed:v10 target:self set:sel_setFitnessTrackingEnabled_forSpecifier_ get:sel_isFitnessTrackingEnabled_ detail:0 cell:6 edit:0];

    [v11 setProperty:@"FITNESS_TRACKING_MASTER" forKey:v7];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:isFitnessTrackingEnabledFromTCC];
    [v11 setProperty:v12 forKey:*MEMORY[0x277D401A8]];

    if (isFitnessTrackingEnabledFromTCC)
    {
      v22.receiver = self;
      v22.super_class = PUIMotionFitnessController;
      specifiers = [(PUITCCAccessController *)&v22 specifiers];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [PUIMotionFitnessController specifiers];
      }

      [specifiers insertObject:emptyGroupSpecifier atIndex:0];
      [specifiers insertObject:v11 atIndex:1];
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      sf_isiPhone = [currentDevice sf_isiPhone];

      if (sf_isiPhone)
      {
        loadSensorKitSpecifiersProvider = [(PUIMotionFitnessController *)self loadSensorKitSpecifiersProvider];
        sensorKitSpecifiersProvider = self->_sensorKitSpecifiersProvider;
        self->_sensorKitSpecifiersProvider = loadSensorKitSpecifiersProvider;

        v18 = [(SRRelatedSettingsProvider *)self->_sensorKitSpecifiersProvider specifiersForRelatedSettings:@"Motion"];
        if (v18)
        {
          [specifiers addObjectsFromArray:v18];
        }
      }

      v19 = *(&self->super.super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.super.isa + v3) = specifiers;
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{emptyGroupSpecifier, v11, 0}];
      v19 = *(&self->super.super.super.super.super.super.isa + v3);
      *(&self->super.super.super.super.super.super.isa + v3) = v20;
    }

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUIMotionFitnessController;
  [(PUITCCAccessController *)&v4 viewDidAppear:appear];
  [(PUIMotionFitnessController *)self provideNavigationDonations];
}

- (void)provideNavigationDonations
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithKey:@"MOTION" table:@"Privacy" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v10 = [v8 initWithKey:@"PRIVACY" table:@"Privacy" locale:currentLocale2 bundleURL:bundleURL];

  v13[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"settings-navigation://com.apple.Settings.PrivacyAndSecurity/MOTION"];
  [(PUIMotionFitnessController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.motion-and-fitness" title:v7 localizedNavigationComponents:v11 deepLink:v12];
}

- (id)loadSensorKitSpecifiersProvider
{
  v2 = PSBundlePathForPreferenceBundle();
  v3 = [MEMORY[0x277CCA8D8] bundleWithPath:v2];
  v4 = v3;
  if (v3 && (v5 = [v3 classNamed:@"SRRelatedSpecifiers"]) != 0)
  {
    v6 = objc_alloc_init(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_appSpecifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  v5 = *(&self->super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.isa + v3) = 0;

  v9.receiver = self;
  v9.super_class = PUIMotionFitnessController;
  specifiers = [(PUITCCAccessController *)&v9 specifiers];
  v7 = *(&self->super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.isa + v3) = v4;

  return specifiers;
}

- (BOOL)isFitnessTrackingEnabledFromTCC
{
  v8 = 0;
  serviceKey = [(PUITCCAccessController *)self serviceKey];
  Override = TCCAccessGetOverride();

  if (!Override)
  {
    v5 = _PUILoggingFacility(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2657FE000, v5, OS_LOG_TYPE_DEFAULT, "### Failed to get Fitness Tracking override value", v7, 2u);
    }
  }

  return v8 == 0;
}

- (void)setFitnessTrackingEnabled:(id)enabled forSpecifier:(id)specifier
{
  v25 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  specifierCopy = specifier;
  v8 = *MEMORY[0x277D401A8];
  v9 = [specifierCopy propertyForKey:*MEMORY[0x277D401A8]];
  if (([enabledCopy isEqual:v9] & 1) == 0)
  {
    bOOLValue = [enabledCopy BOOLValue];
    v11 = bOOLValue;
    v12 = _PUILoggingFacility(bOOLValue);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "[PUIMotionFitnessController setFitnessTrackingEnabled:forSpecifier:]";
      v23 = 1024;
      v24 = v11;
      _os_log_impl(&dword_2657FE000, v12, OS_LOG_TYPE_DEFAULT, "%s - enable: %d", &v21, 0x12u);
    }

    serviceKey = [(PUITCCAccessController *)self serviceKey];
    v14 = TCCAccessSetOverride();

    if (v14)
    {
      [specifierCopy setProperty:enabledCopy forKey:v8];
      if (v11)
      {
        _appSpecifiers = [(PUIMotionFitnessController *)self _appSpecifiers];
        [(PUIMotionFitnessController *)self insertContiguousSpecifiers:_appSpecifiers afterSpecifier:specifierCopy animated:1];
      }

      else
      {
        v20 = [(PUIMotionFitnessController *)self indexOfSpecifier:specifierCopy]+ 1;
        _appSpecifiers = [*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]) subarrayWithRange:{v20, objc_msgSend(*(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]), "count") - v20}];
        [(PUIMotionFitnessController *)self removeContiguousSpecifiers:_appSpecifiers animated:1];
      }

      goto LABEL_15;
    }

    v17 = _PUILoggingFacility(v15);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v18)
      {
        LOWORD(v21) = 0;
        v19 = "### Failed to remove Fitness Tracking override";
LABEL_13:
        _os_log_impl(&dword_2657FE000, v17, OS_LOG_TYPE_DEFAULT, v19, &v21, 2u);
      }
    }

    else if (v18)
    {
      LOWORD(v21) = 0;
      v19 = "### Failed to override Fitness Tracking";
      goto LABEL_13;
    }

    _appSpecifiers = [specifierCopy propertyForKey:*MEMORY[0x277D3FEB0]];
    [_appSpecifiers setOn:objc_msgSend(v9 animated:{"BOOLValue"), 1}];
LABEL_15:
  }
}

@end