@interface MTLumaDodgePillSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation MTLumaDodgePillSettings

- (void)setDefaultValues
{
  if (_RunningInSpringBoard___once != -1)
  {
    [MTLumaDodgePillSettings setDefaultValues];
  }

  if (_RunningInSpringBoard___result == 1)
  {
    _MainScreenReferenceBounds(self, a2);
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
  }

  [(MTLumaDodgePillSettings *)self setMinWidth:?];
  [(MTLumaDodgePillSettings *)self setMaxWidth:?];
  [(MTLumaDodgePillSettings *)self setHeight:?];
  [(MTLumaDodgePillSettings *)self setEdgeSpacing:?];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];
    if (userInterfaceIdiom2 == 1)
    {
      if (_RunningInSpringBoard___once != -1)
      {
        [MTLumaDodgePillSettings setDefaultValues];
      }

      v9 = _RunningInSpringBoard___result;
      if (_RunningInSpringBoard___result == 1)
      {
        v10 = _MainScreenReferenceBounds(userInterfaceIdiom2, v8);
      }

      else
      {
        userInterfaceIdiom = [MEMORY[0x277D759A0] mainScreen];
        [userInterfaceIdiom _referenceBounds];
      }

      Height = CGRectGetHeight(*&v10);
      if ((v9 & 1) == 0)
      {
      }

      if (Height > 1210.0)
      {
        goto LABEL_27;
      }
    }

    else
    {
    }

    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];
    if (userInterfaceIdiom3 != 1)
    {

LABEL_28:
      [(MTLumaDodgePillSettings *)self setHeight:?];
      [(MTLumaDodgePillSettings *)self setEdgeSpacing:?];
      goto LABEL_29;
    }

    if (_RunningInSpringBoard___once != -1)
    {
      [MTLumaDodgePillSettings setDefaultValues];
    }

    v18 = _RunningInSpringBoard___result;
    if (_RunningInSpringBoard___result == 1)
    {
      v19 = _MainScreenReferenceBounds(userInterfaceIdiom3, v17);
    }

    else
    {
      userInterfaceIdiom = [MEMORY[0x277D759A0] mainScreen];
      [userInterfaceIdiom _referenceBounds];
    }

    v23 = CGRectGetHeight(*&v19);
    if ((v18 & 1) == 0)
    {
    }

    if (v23 <= 1024.0)
    {
      goto LABEL_28;
    }

LABEL_27:
    [(MTLumaDodgePillSettings *)self setMinWidth:?];
    [(MTLumaDodgePillSettings *)self setMaxWidth:?];
    goto LABEL_28;
  }

LABEL_29:
  [(MTLumaDodgePillSettings *)self setColorAddWhiteness:?];
  [(MTLumaDodgePillSettings *)self setBrightLumaThreshold:?];
  [(MTLumaDodgePillSettings *)self setDarkLumaThreshold:?];
  [(MTLumaDodgePillSettings *)self setInitialLumaThreshold:?];
  [(MTLumaDodgePillSettings *)self setCornerRadius:?];
  [(MTLumaDodgePillSettings *)self setCornerMask:?];
  initWithDefaultValues = [(PTSettings *)[MTLumaDodgePillStyleSettings alloc] initWithDefaultValues];
  [(MTLumaDodgePillSettings *)self setNoneSettings:?];

  initWithDefaultValues2 = [(PTSettings *)[MTLumaDodgePillStyleSettings alloc] initWithDefaultValues];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues2 setColorAddOpacity:?];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues2 setLumaMapPlusColorOpacity:?];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues2 setOverlayBlendOpacity:?];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues2 setBlur:?];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues2 setBrightness:?];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues2 setSaturation:?];
  [(MTLumaDodgePillSettings *)self setThinSettings:?];
  initWithDefaultValues3 = [(PTSettings *)[MTLumaDodgePillStyleSettings alloc] initWithDefaultValues];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues3 setColorAddOpacity:?];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues3 setLumaMapPlusColorOpacity:?];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues3 setBlur:?];
  [(MTLumaDodgePillSettings *)self setGraySettings:?];
  initWithDefaultValues4 = [(PTSettings *)[MTLumaDodgePillStyleSettings alloc] initWithDefaultValues];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues4 setLumaMapPlusColorOpacity:?];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues4 setBlur:?];
  [(MTLumaDodgePillSettings *)self setBlackSettings:?];
  initWithDefaultValues5 = [(PTSettings *)[MTLumaDodgePillStyleSettings alloc] initWithDefaultValues];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues5 setColorAddOpacity:?];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues5 setLumaMapPlusColorOpacity:?];
  [(MTLumaDodgePillStyleSettings *)initWithDefaultValues5 setBlur:?];
  [(MTLumaDodgePillSettings *)self setWhiteSettings:?];
  [(MTLumaDodgePillSettings *)self setDisableLumaTracking:?];
  [(MTLumaDodgePillSettings *)self setOverrideDodgeMode:?];
}

+ (id)settingsControllerModule
{
  v23 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v39 = [v23 valueValidator:?];
  v21 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v20 = [v21 minValue:? maxValue:?];
  v40 = [v20 valueValidator:?];
  v17 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v41 = [v17 valueValidator:?];
  v2 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v3 = [v2 minValue:? maxValue:?];
  v42 = [v3 valueValidator:?];
  v43 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v4 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v44 = [v4 minValue:? maxValue:?];
  v45 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v5 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v46 = [v5 minValue:? maxValue:?];
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  v24 = [MEMORY[0x277D43218] sectionWithRows:? title:?];
  v27 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v22 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v28 = [v22 minValue:? maxValue:?];
  v29 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v18 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v30 = [v18 minValue:? maxValue:?];
  v31 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v6 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v32 = [v6 minValue:? maxValue:?];
  v33 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v7 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v34 = [v7 minValue:? maxValue:?];
  v35 = [MEMORY[0x277D431E0] rowWithTitle:? childSettingsKeyPath:?];
  v36 = [MEMORY[0x277D431E0] rowWithTitle:? childSettingsKeyPath:?];
  v37 = [MEMORY[0x277D431E0] rowWithTitle:? childSettingsKeyPath:?];
  v38 = [MEMORY[0x277D431E0] rowWithTitle:? childSettingsKeyPath:?];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  v9 = [MEMORY[0x277D43218] sectionWithRows:? title:?];
  v25 = [MEMORY[0x277D432A0] rowWithTitle:? valueKeyPath:?];
  v10 = [MEMORY[0x277D431B8] rowWithTitle:? valueKeyPath:?];
  v26 = [v10 possibleValues:? titles:?];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  v12 = [MEMORY[0x277D43218] sectionWithRows:? title:?];
  v13 = MEMORY[0x277D43218];
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v15 = [v13 moduleWithTitle:? contents:?];

  return v15;
}

id __51__MTLumaDodgePillSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 maxWidth];
  v6 = v5;
  [v4 doubleValue];
  if (v7 <= v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  v9 = v8;

  return v9;
}

id __51__MTLumaDodgePillSettings_settingsControllerModule__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  [a3 minWidth];
  v6 = v5;
  [v4 doubleValue];
  if (v7 >= v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  }

  v9 = v8;

  return v9;
}

@end