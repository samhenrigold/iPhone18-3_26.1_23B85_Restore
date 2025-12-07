@interface VoiceOverKeyboardModifierKeyController
+ (id)modifierShortStringDescription:(int64_t)description;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverKeyboardModifierKeyController

- (id)actionDetailControllerDelegate
{
  specifier = [(VoiceOverKeyboardModifierKeyController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VoiceOverKeyboardModifierKeyDelegateKey"];

  return v4;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = settingsLocString(@"KEYBOARD_MODIFIER_KEY_FOOTER", @"VoiceOverSettings");
    [emptyGroupSpecifier setProperty:v7 forKey:*MEMORY[0x277D3FF88]];

    [array addObject:emptyGroupSpecifier];
    v8 = MEMORY[0x277D3FAD8];
    v9 = settingsLocString(@"KEYBOARD_MODIFIER_KEY_CONTROL_OPTIONS", @"VoiceOverSettings");
    v10 = [v8 preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

    v11 = *MEMORY[0x277D401A8];
    [v10 setProperty:&unk_284E7E4C8 forKey:*MEMORY[0x277D401A8]];
    [array addObject:v10];
    v12 = MEMORY[0x277D3FAD8];
    v13 = settingsLocString(@"KEYBOARD_MODIFIER_KEY_CAPS_LOCK", @"VoiceOverSettings");
    v14 = [v12 preferenceSpecifierNamed:v13 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v14 setProperty:&unk_284E7E4E0 forKey:v11];
    [array addObject:v14];
    v15 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = array;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v24[3] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = VoiceOverKeyboardModifierKeyController;
  [(AccessibilityBridgeBaseController *)&v23 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"KEYBOARD_MODIFIER_KEYS" table:@"VoiceOverSettings" locale:currentLocale bundleURL:bundleURL];

  v8 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"KEYBOARDS" table:@"VoiceOverSettings" locale:currentLocale2 bundleURL:bundleURL2];

  v12 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale3 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL3 = [v3 bundleURL];
  v15 = [v12 initWithKey:@"VOICEOVER_TITLE" table:@"AccessibilitySettings" locale:currentLocale3 bundleURL:bundleURL3];

  v16 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale4 = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL4 = [v3 bundleURL];
  v19 = [v16 initWithKey:@"ACCESSIBILITY_TITLE" table:@"AccessibilitySettings" locale:currentLocale4 bundleURL:bundleURL4];

  v20 = MEMORY[0x277CF3470];
  v24[0] = v19;
  v24[1] = v15;
  v24[2] = v11;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=VOICEOVER_ID/KeyboardRow/KEYBOARD_MODIFIER_KEYS_ID"];
  [v20 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v21 deepLink:v22];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  specifier = [cellCopy specifier];
  v7 = [specifier propertyForKey:*MEMORY[0x277D401A8]];
  integerValue = [v7 integerValue];

  actionDetailControllerDelegate = [(VoiceOverKeyboardModifierKeyController *)self actionDetailControllerDelegate];
  selectedModifier = [actionDetailControllerDelegate selectedModifier];
  integerValue2 = [selectedModifier integerValue];

  [cellCopy setChecked:(integerValue2 & integerValue) != 0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v19.receiver = self;
  v19.super_class = VoiceOverKeyboardModifierKeyController;
  pathCopy = path;
  viewCopy = view;
  [(VoiceOverKeyboardModifierKeyController *)&v19 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:{pathCopy, v19.receiver, v19.super_class}];

  specifier = [v8 specifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isChecked = [v8 isChecked];
    actionDetailControllerDelegate = [(VoiceOverKeyboardModifierKeyController *)self actionDetailControllerDelegate];
    selectedModifier = [actionDetailControllerDelegate selectedModifier];
    integerValue = [selectedModifier integerValue];

    v14 = [specifier propertyForKey:*MEMORY[0x277D401A8]];
    integerValue2 = [v14 integerValue];

    if (isChecked)
    {
      v16 = integerValue & ~integerValue2;
    }

    else
    {
      v16 = integerValue2 | integerValue;
    }

    if (v16)
    {
      [v8 setChecked:isChecked ^ 1u];
      actionDetailControllerDelegate2 = [(VoiceOverKeyboardModifierKeyController *)self actionDetailControllerDelegate];
      v18 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
      [actionDetailControllerDelegate2 setModifier:v18];
    }
  }
}

+ (id)modifierShortStringDescription:(int64_t)description
{
  if ((description - 1) > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(off_278B90BD8[description - 1], @"VoiceOverSettings");
  }

  return v4;
}

@end