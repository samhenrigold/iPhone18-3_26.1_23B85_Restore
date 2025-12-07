@interface VoiceOverKeyboardPhoneticFeedbackController
+ (id)phoneticFeedbackShortStringDescription:(int64_t)description;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverKeyboardPhoneticFeedbackController

- (id)actionDetailControllerDelegate
{
  specifier = [(VoiceOverKeyboardPhoneticFeedbackController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VoiceOverKeyboardPhoneticFeedbackDelegateKey"];

  return v4;
}

- (id)specifiers
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = *(&self->super.super.super.super.super.super.isa + *MEMORY[0x277D3FC48]);
  if (!v3)
  {
    v22 = *MEMORY[0x277D3FC48];
    array = [MEMORY[0x277CBEB18] array];
    actionDetailControllerDelegate = [(VoiceOverKeyboardPhoneticFeedbackController *)self actionDetailControllerDelegate];
    selectedPhoneticFeedback = [actionDetailControllerDelegate selectedPhoneticFeedback];

    array2 = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    selfCopy = self;
    obj = [(VoiceOverKeyboardPhoneticFeedbackController *)self _phoneticFeedbackArray];
    v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v26;
      v11 = *MEMORY[0x277D401A8];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          v14 = +[VoiceOverKeyboardPhoneticFeedbackController phoneticFeedbackShortStringDescription:](VoiceOverKeyboardPhoneticFeedbackController, "phoneticFeedbackShortStringDescription:", [v13 integerValue]);
          v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          [v15 setProperty:v13 forKey:v11];
          if ([v13 isEqualToNumber:selectedPhoneticFeedback])
          {
            v16 = v15;

            v9 = v16;
          }

          [array2 addObject:v15];
        }

        v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    if ([array2 count])
    {
      v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:0 cell:0 edit:0];
      [v17 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
      [array addObject:v17];
      if (v9)
      {
        [v17 setProperty:v9 forKey:*MEMORY[0x277D40090]];
      }

      [array addObjectsFromArray:array2];
    }

    v18 = [array copy];
    v19 = *(&selfCopy->super.super.super.super.super.super.isa + v22);
    *(&selfCopy->super.super.super.super.super.super.isa + v22) = v18;

    v3 = *(&selfCopy->super.super.super.super.super.super.isa + v22);
  }

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  v24[3] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = VoiceOverKeyboardPhoneticFeedbackController;
  [(AccessibilityBridgeBaseController *)&v23 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"PHONETICS_TITLE" table:@"VoiceOverSettings" locale:currentLocale bundleURL:bundleURL];

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
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=VOICEOVER_ID/KeyboardRow/PHONETICS_ID"];
  [v20 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v21 deepLink:v22];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v16.receiver = self;
  v16.super_class = VoiceOverKeyboardPhoneticFeedbackController;
  pathCopy = path;
  [(VoiceOverKeyboardPhoneticFeedbackController *)&v16 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(VoiceOverKeyboardPhoneticFeedbackController *)self indexForIndexPath:pathCopy, v16.receiver, v16.super_class];
  specifiers = [(VoiceOverKeyboardPhoneticFeedbackController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(VoiceOverKeyboardPhoneticFeedbackController *)self specifierAtIndex:[(VoiceOverKeyboardPhoneticFeedbackController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      actionDetailControllerDelegate = [(VoiceOverKeyboardPhoneticFeedbackController *)self actionDetailControllerDelegate];
      [actionDetailControllerDelegate setPhoneticFeedback:v14];

      [(VoiceOverKeyboardPhoneticFeedbackController *)self reloadSpecifiers];
    }
  }
}

+ (id)phoneticFeedbackShortStringDescription:(int64_t)description
{
  if (description > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(off_278B90C10[description], @"VoiceOverSettings");
  }

  return v4;
}

@end