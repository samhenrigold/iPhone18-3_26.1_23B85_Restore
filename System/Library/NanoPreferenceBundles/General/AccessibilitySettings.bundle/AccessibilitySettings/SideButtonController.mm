@interface SideButtonController
- (double)_sideButtonDoubleTapInterval;
- (double)_sideClickSpeedFromSpecifierKey:(id)key;
- (id)_vibrationPattern;
- (id)specifiers;
- (void)_flashSelectedRow;
- (void)_updateCheckedStatusForCell:(id)cell;
- (void)_vibrateSelectedRow;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SideButtonController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.super.isa + v3))
  {
    v4 = [(SideButtonController *)self loadSpecifiersFromPlistName:@"SideButtonSettings" target:self];
    v5 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v4;

    if (AXActivePairedDeviceIsLighthouseOrLater())
    {
      v6 = settingsLocString(@"BUTTON_CLICK_TITLE", @"SideButtonSettings");
      [(SideButtonController *)self setTitle:v6];

      v7 = [*(&self->super.super.super.super.super.super.isa + v3) specifierForID:@"CLICK_SPEED_GROUP_CELL"];
      v8 = settingsLocString(@"BUTTON_CLICK_INSTRUCTIONS", @"SideButtonSettings");
      [v7 setProperty:v8 forKey:*MEMORY[0x277D3FF88]];
    }
  }

  v9 = *(&self->super.super.super.super.super.super.isa + v3);

  return v9;
}

- (void)viewWillAppear:(BOOL)appear
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = SideButtonController;
  [(AccessibilityBridgeBaseController *)&v15 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"BUTTON_CLICK_TITLE" table:@"SideButtonSettings" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = MEMORY[0x277CF3470];
  v16[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=SideButton"];
  [v12 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v13 deepLink:v14];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v30 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = SideButtonController;
  [(SideButtonController *)&v28 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v27.receiver = self;
  v27.super_class = SideButtonController;
  v8 = [(SideButtonController *)&v27 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:*MEMORY[0x277D3FFF0]];
  [(SideButtonController *)self _sideClickSpeedFromSpecifierKey:v10];
  v12 = v11;

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  [(AccessibilityBridgeBaseController *)self setGizmoAccessibilityPref:v13 forKey:@"SideButtonDoubleTapInterval"];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  visibleCells = [viewCopy visibleCells];
  v15 = [visibleCells countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(visibleCells);
        }

        [(SideButtonController *)self _updateCheckedStatusForCell:*(*(&v23 + 1) + 8 * v18++)];
      }

      while (v16 != v18);
      v16 = [visibleCells countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v16);
  }

  [v8 setChecked:1];
  [(SideButtonController *)self setSelectedIndexPath:pathCopy];
  AudioServicesStopSystemSound();
  vibrationTimer = [(SideButtonController *)self vibrationTimer];
  [vibrationTimer invalidate];

  v20 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__vibrateSelectedRow selector:0 userInfo:0 repeats:0.649999976];
  [(SideButtonController *)self setVibrationTimer:v20];

  [(SideButtonController *)self setFlashCount:0];
  flashTimer = [(SideButtonController *)self flashTimer];
  [flashTimer invalidate];

  v22 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__flashSelectedRow selector:0 userInfo:0 repeats:0.699999988];
  [(SideButtonController *)self setFlashTimer:v22];
}

- (void)_updateCheckedStatusForCell:(id)cell
{
  cellCopy = cell;
  specifier = [cellCopy specifier];
  v5 = [specifier propertyForKey:*MEMORY[0x277D3FFF0]];
  [(SideButtonController *)self _sideClickSpeedFromSpecifierKey:v5];
  v7 = v6;

  [(SideButtonController *)self _sideButtonDoubleTapInterval];
  [cellCopy setChecked:{vabdd_f64(v7, v8) < 0.00999999978}];
}

- (double)_sideButtonDoubleTapInterval
{
  accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
  [accessibilityDomainAccessor doubleForKey:@"SideButtonDoubleTapInterval"];
  v4 = v3;

  result = *MEMORY[0x277CE6898];
  if (v4 >= *MEMORY[0x277CE6898])
  {
    return v4;
  }

  return result;
}

- (double)_sideClickSpeedFromSpecifierKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"sideClickSpeedSlowest"])
  {
    v4 = MEMORY[0x277CE68A8];
  }

  else if ([keyCopy isEqualToString:@"sideClickSpeedSlow"])
  {
    v4 = MEMORY[0x277CE68A0];
  }

  else
  {
    if (([keyCopy isEqualToString:@"sideClickSpeedDefault"] & 1) == 0)
    {
      _AXAssert();
    }

    v4 = MEMORY[0x277CE6898];
  }

  v5 = *v4;

  return v5;
}

- (id)_vibrationPattern
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  [(SideButtonController *)self _sideButtonDoubleTapInterval];
  v3 = MEMORY[0x277CE6898];
  v5 = (v4 - *MEMORY[0x277CE6898] * 0.5) * 1000.0;
  *&v5 = v5;
  v6 = [v2 numberWithFloat:v5];
  v7 = *v3 * 1000.0 * 0.5;
  *&v7 = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v13[0] = @"Intensity";
  v13[1] = @"VibePattern";
  v14[0] = &unk_284E7E420;
  v12[0] = MEMORY[0x277CBEC38];
  v12[1] = v8;
  v12[2] = MEMORY[0x277CBEC28];
  v12[3] = v6;
  v12[4] = MEMORY[0x277CBEC38];
  v12[5] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v10;
}

- (void)_flashSelectedRow
{
  table = [(SideButtonController *)self table];
  selectedIndexPath = [(SideButtonController *)self selectedIndexPath];
  [table selectRowAtIndexPath:selectedIndexPath animated:0 scrollPosition:0];
  [table deselectRowAtIndexPath:selectedIndexPath animated:0];
  [(SideButtonController *)self setFlashCount:[(SideButtonController *)self flashCount]+ 1];
  flashTimer = [(SideButtonController *)self flashTimer];
  [flashTimer invalidate];

  if ([(SideButtonController *)self flashCount]> 1)
  {
    [(SideButtonController *)self setFlashTimer:0];
  }

  else
  {
    v5 = MEMORY[0x277CBEBB8];
    [(SideButtonController *)self _sideButtonDoubleTapInterval];
    v6 = [v5 scheduledTimerWithTimeInterval:self target:sel__flashSelectedRow selector:0 userInfo:0 repeats:?];
    [(SideButtonController *)self setFlashTimer:v6];
  }
}

- (void)_vibrateSelectedRow
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBA658];
  _vibrationPattern = [(SideButtonController *)self _vibrationPattern];
  v4[0] = _vibrationPattern;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  AudioServicesPlaySystemSoundWithOptions();
}

@end