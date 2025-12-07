@interface FATopLevelSettingsSpecifierProvider
- (id)_familyBaseSpecifierWithState:(unint64_t)state;
- (id)_familySpecifier;
- (id)specifiers;
@end

@implementation FATopLevelSettingsSpecifierProvider

- (id)specifiers
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  isMultiUserMode = [MEMORY[0x277CEC7B8] isMultiUserMode];
  if (isMultiUserMode)
  {
    _familySpecifier = _FALogSystem(isMultiUserMode);
    if (!os_log_type_enabled(_familySpecifier, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v13 = 0;
    v6 = "Device is in multi-user mode, not showing top level Family specifiers.";
    v7 = &v13;
LABEL_9:
    _os_log_impl(&dword_21BB35000, _familySpecifier, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    goto LABEL_10;
  }

  _appleAccount = [(FASettingsSpecifierProvider *)self _appleAccount];

  if (!_appleAccount)
  {
    _familySpecifier = _FALogSystem(v9);
    if (!os_log_type_enabled(_familySpecifier, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v12 = 0;
    v6 = "User not signed in to AppleAccount, not showing top level Family specifiers.";
    v7 = &v12;
    goto LABEL_9;
  }

  _familySpecifier = [(FATopLevelSettingsSpecifierProvider *)self _familySpecifier];
  if (_familySpecifier)
  {
    [v3 addObject:_familySpecifier];
  }

LABEL_10:

  v10 = [v3 copy];
  [(FASettingsSpecifierProvider *)self setSpecifiers:v10];

  return v10;
}

- (id)_familySpecifier
{
  v13 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  _familyState = [standardUserDefaults integerForKey:0];

  v6 = _familyState && !self->super._familyCircle && !self->super._didFailToGetFamilyDetails;
  v7 = _FALogSystem(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = v6;
    v11 = 2048;
    v12 = _familyState;
    _os_log_impl(&dword_21BB35000, v7, OS_LOG_TYPE_DEFAULT, "Using cache - %d with state - %lu", v10, 0x12u);
  }

  if (self->super._familyCircle || self->super._didFailToGetFamilyDetails)
  {
    if (v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  [(FASettingsSpecifierProvider *)self _loadFamilyDetailsWithCompletion:0];
  if (!v6)
  {
LABEL_10:
    _familyState = [(FASettingsSpecifierProvider *)self _familyState];
  }

LABEL_11:
  v8 = [(FATopLevelSettingsSpecifierProvider *)self _familyBaseSpecifierWithState:_familyState];
  [v8 setControllerLoadAction:sel__viewFamilySpecifierWasTapped_];
  [v8 setIdentifier:0];

  return v8;
}

- (id)_familyBaseSpecifierWithState:(unint64_t)state
{
  v4 = [MEMORY[0x277D1B1C8] imageDescriptorNamed:*MEMORY[0x277D1B240]];
  v5 = [objc_alloc(MEMORY[0x277D1B1A8]) initWithType:@"com.apple.application-icon.family"];
  v6 = [v5 prepareImageForDescriptor:v4];
  v7 = MEMORY[0x277D755B8];
  cGImage = [v6 CGImage];
  [v6 scale];
  v9 = [v7 imageWithCGImage:cGImage scale:0 orientation:?];
  v10 = MEMORY[0x277D3FAD8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"FAMILY_TOP_LEVEL_CELL_LABEL" value:&stru_282D9AA68 table:@"Localizable"];
  v13 = [v10 preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:2 edit:0];

  [v13 setProperty:v9 forKey:*MEMORY[0x277D3FFC0]];

  return v13;
}

@end