@interface HearingDeviceComplicationController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HearingDeviceComplicationController

- (id)specifiers
{
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v17 = *MEMORY[0x277D3FC48];
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
    v5 = 0;
    v6 = *MEMORY[0x277D3FFB8];
    v7 = *MEMORY[0x277D401A8];
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = nameForComplicationPreferredDisplayMode();
      v11 = MEMORY[0x277D3FAD8];
      v12 = nameForComplicationPreferredDisplayMode();
      v13 = [v11 preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:0 cell:3 edit:0];

      [v13 setProperty:v10 forKey:v6];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
      [v13 setProperty:v14 forKey:v7];

      [v4 addObject:v13];
      v8 = 0;
      v5 = 1;
    }

    while ((v9 & 1) != 0);
    v15 = *(&self->super.super.super.super.super.super.isa + v17);
    *(&self->super.super.super.super.super.super.isa + v17) = v4;

    v3 = *(&self->super.super.super.super.super.super.isa + v17);
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HearingDeviceComplicationController;
  [(AccessibilityBridgeBaseController *)&v15 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"HEARING_DEVICES_COMPLICATION_LABEL" table:@"AccessibilitySettings" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = MEMORY[0x277CF3470];
  v16[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v14 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=HearingDevicesComplicationRowID"];
  [v12 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v13 deepLink:v14];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  specifier = [cellCopy specifier];
  v7 = [objc_opt_class() domainAccessorForDomain:*MEMORY[0x277D81CF0]];
  v8 = [(AccessibilityBridgeBaseController *)self gizmoValueForKey:@"HearingAidComplicationPreferredDisplayMode" domainAccessor:v7];
  integerValue = [v8 integerValue];

  v10 = [specifier propertyForKey:*MEMORY[0x277D401A8]];
  integerValue2 = [v10 integerValue];

  [cellCopy setChecked:integerValue2 == integerValue];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = HearingDeviceComplicationController;
  pathCopy = path;
  viewCopy = view;
  [(HearingDeviceComplicationController *)&v14 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:{pathCopy, v14.receiver, v14.super_class}];

  specifier = [v8 specifier];
  v10 = [specifier propertyForKey:*MEMORY[0x277D401A8]];
  integerValue = [v10 integerValue];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:integerValue];
  v13 = [objc_opt_class() domainAccessorForDomain:*MEMORY[0x277D81CF0]];
  [(AccessibilityBridgeBaseController *)self setGizmoPref:v12 forKey:@"HearingAidComplicationPreferredDisplayMode" domainAccessor:v13];

  [(HearingDeviceComplicationController *)self reloadSpecifiers];
}

@end