@interface SHSDualSIMListController
- (id)detailTextForToneWithSpecifier:(id)specifier;
- (id)specifiers;
- (void)reloadSpecifiers;
- (void)setSpecifier:(id)specifier;
- (void)updateDifferentTonesState;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SHSDualSIMListController

- (void)reloadSpecifiers
{
  v15 = *MEMORY[0x277D85DE8];
  hasDifferentTones = [(SHSDualSIMListController *)self hasDifferentTones];
  v8.receiver = self;
  v8.super_class = SHSDualSIMListController;
  [(SHSDualSIMListController *)&v8 reloadSpecifiers];
  v4 = SHSLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SHSDualSIMListController hasDifferentTones](self, "hasDifferentTones")}];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:hasDifferentTones];
    *buf = 136315650;
    v10 = "[SHSDualSIMListController reloadSpecifiers]";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_265896000, v4, OS_LOG_TYPE_DEFAULT, "%s self.hasDifferentTones: %@ differentTonesBeforeUpdate: %@", buf, 0x20u);
  }

  if (hasDifferentTones != [(SHSDualSIMListController *)self hasDifferentTones])
  {
    [(SHSDualSIMListController *)self alertType];
    v7 = NSStringFromTLAlertType();
    [SHSAnalytics trackingDualSIMToneValueChanged:v7 didSelectDifferentTones:[(SHSDualSIMListController *)self hasDifferentTones]];
  }
}

- (void)setSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = SHSDualSIMListController;
  specifierCopy = specifier;
  [(SHSDualSIMListController *)&v6 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"alertType", v6.receiver, v6.super_class}];

  if (v5)
  {
    [(SHSDualSIMListController *)self setAlertType:TLAlertTypeFromString()];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SHSDualSIMListController;
  [(SHSDualSIMListController *)&v15 viewDidAppear:appear];
  v4 = MEMORY[0x277CBEBC0];
  v5 = MEMORY[0x277CCACA8];
  specifier = [(SHSDualSIMListController *)self specifier];
  identifier = [specifier identifier];
  v8 = [v5 stringWithFormat:@"settings-navigation://com.apple.Settings.Sounds/%@", identifier];
  v9 = [v4 URLWithString:v8];

  v10 = MEMORY[0x277CCAEB8];
  specifier2 = [(SHSDualSIMListController *)self specifier];
  v12 = [v10 shs_localizedPathComponentForTonePickerSpecifier:specifier2];

  if (v12)
  {
    shs_rootPaneComponent = [MEMORY[0x277CCAEB8] shs_rootPaneComponent];
    v16[0] = shs_rootPaneComponent;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [(SHSDualSIMListController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.sound" title:v12 localizedNavigationComponents:v14 deepLink:v9];
  }

  else
  {
    shs_rootPaneComponent = SHSLogForCategory(0);
    if (os_log_type_enabled(shs_rootPaneComponent, OS_LOG_TYPE_ERROR))
    {
      [(SHSDualSIMListController *)self viewDidAppear:shs_rootPaneComponent];
    }
  }
}

- (id)specifiers
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v21 = *MEMORY[0x277D3FC48];
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = +[SHSDualSIMToneHelper fetchCTSubscriptionsInUse];
    v5 = SHSLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "[SHSDualSIMListController specifiers]";
      v34 = 2112;
      v35 = v4;
      _os_log_impl(&dword_265896000, v5, OS_LOG_TYPE_DEFAULT, "%s fetchCTSubscriptionsInUse returned contexts: %@", buf, 0x16u);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v4;
    v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v25 = *v28;
      v24 = *MEMORY[0x277D40128];
      v23 = *MEMORY[0x277D3FE58];
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v27 + 1) + 8 * i);
          label = [v9 label];
          labelID = [v9 labelID];
          v12 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:label target:self set:0 get:sel_detailTextForToneWithSpecifier_ detail:objc_opt_class() cell:2 edit:0];
          [v12 setProperty:v9 forKey:v24];
          [(SHSDualSIMListController *)self alertType];
          v13 = NSStringFromTLAlertType();
          [v12 setProperty:v13 forKey:@"alertType"];

          [v12 setProperty:objc_opt_class() forKey:v23];
          v14 = [SHSDualSIMToneHelper fetchShortLabelForContext:v9];
          [v12 setProperty:v14 forKey:@"contextShortLabel"];

          if (labelID)
          {
            v15 = [@"TLAlertTopicIncomingCall" stringByAppendingString:labelID];
            [v12 setProperty:v15 forKey:@"accountIdentifier"];
          }

          userDefaultVoice = [v9 userDefaultVoice];
          bOOLValue = [userDefaultVoice BOOLValue];

          if (bOOLValue)
          {
            [v26 insertObject:v12 atIndex:0];
          }

          else
          {
            [v26 addObject:v12];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v7);
    }

    v18 = [MEMORY[0x277CBEA60] arrayWithArray:v26];
    v19 = *(&self->super.super.super.super.super.isa + v21);
    *(&self->super.super.super.super.super.isa + v21) = v18;

    [(SHSDualSIMListController *)self updateDifferentTonesState];
    v3 = *(&self->super.super.super.super.super.isa + v21);
  }

  return v3;
}

- (id)detailTextForToneWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:@"alertType"];
  v5 = TLAlertTypeFromString();

  v6 = [specifierCopy propertyForKey:@"accountIdentifier"];

  mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
  v8 = [mEMORY[0x277D71F78] currentToneIdentifierForAlertType:v5 topic:v6];

  mEMORY[0x277D71F78]2 = [MEMORY[0x277D71F78] sharedToneManager];
  [mEMORY[0x277D71F78]2 setCurrentToneIdentifier:v8 forAlertType:v5 topic:v6];

  if ((PSGetCapabilityBoolAnswer() & 1) != 0 || !PSGetCapabilityBoolAnswer())
  {
    goto LABEL_6;
  }

  mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
  v11 = [mEMORY[0x277D71F88] currentVibrationIdentifierForAlertType:v5 topic:v6];

  mEMORY[0x277D71F88]2 = [MEMORY[0x277D71F88] sharedVibrationManager];
  [mEMORY[0x277D71F88]2 setCurrentVibrationIdentifier:v11 forAlertType:v5 topic:v6];

  if (![v8 isEqualToString:*MEMORY[0x277D72068]] || objc_msgSend(v11, "isEqualToString:", *MEMORY[0x277D72070]))
  {

LABEL_6:
    mEMORY[0x277D71F78]3 = [MEMORY[0x277D71F78] sharedToneManager];
    v14 = [mEMORY[0x277D71F78]3 nameForToneIdentifier:v8];

    goto LABEL_7;
  }

  v14 = SHS_LocalizedStringForSounds(@"VIBRATE_ONLY");

  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v14;
}

- (void)updateDifferentTonesState
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  v4 = [*(&self->super.super.super.super.super.isa + v3) objectAtIndex:0];
  v5 = [(SHSDualSIMListController *)self detailTextForToneWithSpecifier:v4];
  v6 = [*(&self->super.super.super.super.super.isa + v3) objectAtIndex:1];
  v7 = [(SHSDualSIMListController *)self detailTextForToneWithSpecifier:v6];
  v8 = [v5 isEqualToString:v7];

  [(SHSDualSIMListController *)self setHasDifferentTones:v8 ^ 1u];
  v9 = SHSLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[SHSDualSIMListController hasDifferentTones](self, "hasDifferentTones")}];
    v11 = 136315394;
    v12 = "[SHSDualSIMListController updateDifferentTonesState]";
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_265896000, v9, OS_LOG_TYPE_DEFAULT, "%s self.hasDifferentTones: %@", &v11, 0x16u);
  }
}

- (void)viewDidAppear:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 specifier];
  v4 = 136315394;
  v5 = "[SHSDualSIMListController viewDidAppear:]";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_265896000, a2, OS_LOG_TYPE_ERROR, "%s shs_localizedPathComponentForTonePickerSpecifier returned nil for specifier: %@", &v4, 0x16u);
}

@end