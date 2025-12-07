@interface VoiceOverAudioController
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverAudioController

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(VoiceOverAudioController *)self loadSpecifiersFromPlistName:@"VoiceOverAudioSettings" target:self];
    v6 = [v5 specifierForID:@"VOICEOVER_VOLUME_SLIDER_ID"];
    v7 = AXVolumeMinImage();
    [v6 setProperty:v7 forKey:*MEMORY[0x277D400D0]];

    v8 = AXVolumeMaxImage();
    [v6 setProperty:v8 forKey:*MEMORY[0x277D400E0]];

    [v6 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFC8]];
    accessibilityDomainAccessor = [(AccessibilityBridgeBaseController *)self accessibilityDomainAccessor];
    v10 = [accessibilityDomainAccessor objectForKey:*MEMORY[0x277CE7FA0]];
    integerValue = [v10 integerValue];

    if (integerValue)
    {
      v12 = &unk_284E7E7A0;
    }

    else
    {
      v12 = &unk_284E7E790;
    }

    [v6 setProperty:v12 forKey:*MEMORY[0x277D3FEB8]];
    v13 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v5;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v20[2] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = VoiceOverAudioController;
  [(AccessibilityBridgeBaseController *)&v19 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"AUDIO" table:@"VoiceOverSettings" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"VOICEOVER_TITLE" table:@"AccessibilitySettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL3 = [v3 bundleURL];
  v15 = [v12 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale3 bundleURL:bundleURL3];

  v16 = MEMORY[0x277CF3470];
  v20[0] = v15;
  v20[1] = v11;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v18 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=VOICEOVER_ID/AudioRow"];
  [v16 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v17 deepLink:v18];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = VoiceOverAudioController;
  v8 = [(VoiceOverAudioController *)&v24 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  v9 = [(VoiceOverAudioController *)self specifierAtIndexPath:pathCopy];
  v10 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v9 propertyForKey:*MEMORY[0x277D3FFB8]];
    v12 = [v11 isEqualToString:@"VOICEOVER_VOLUME_SLIDER_ID"];

    if (v12)
    {
      control = [v10 control];
      objc_initWeak(&location, control);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __60__VoiceOverAudioController_tableView_cellForRowAtIndexPath___block_invoke;
      v21[3] = &unk_278B90AA0;
      objc_copyWeak(&v22, &location);
      [control setAccessibilityValueBlock:v21];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __60__VoiceOverAudioController_tableView_cellForRowAtIndexPath___block_invoke_2;
      v18[3] = &unk_278B90AC8;
      objc_copyWeak(&v19, &location);
      v20 = 1028443341;
      [v10 _setAccessibilityIncrementBlock:v18];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __60__VoiceOverAudioController_tableView_cellForRowAtIndexPath___block_invoke_3;
      v15[3] = &unk_278B90AC8;
      objc_copyWeak(&v16, &location);
      v17 = 1028443341;
      [v10 _setAccessibilityDecrementBlock:v15];
      objc_destroyWeak(&v16);
      objc_destroyWeak(&v19);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

  return v10;
}

id __60__VoiceOverAudioController_tableView_cellForRowAtIndexPath___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained value];
  v2 = AXFormatFloatWithPercentage();

  return v2;
}

void __60__VoiceOverAudioController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained value];
  v4 = v3 + *(a1 + 40);

  v6 = objc_loadWeakRetained((a1 + 32));
  *&v5 = v4;
  [v6 setValue:0 animated:v5];
}

void __60__VoiceOverAudioController_tableView_cellForRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained value];
  v4 = v3 - *(a1 + 40);

  v6 = objc_loadWeakRetained((a1 + 32));
  *&v5 = v4;
  [v6 setValue:0 animated:v5];
}

@end