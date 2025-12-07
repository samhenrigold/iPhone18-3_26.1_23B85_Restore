@interface VoiceOverKeyboardTypingFeedbackController
+ (id)typingFeedbackShortStringDescription:(int64_t)description;
- (id)_specifiersForSoftware:(BOOL)software;
- (id)actionDetailControllerDelegate;
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VoiceOverKeyboardTypingFeedbackController

- (id)actionDetailControllerDelegate
{
  specifier = [(VoiceOverKeyboardTypingFeedbackController *)self specifier];
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VoiceOverKeyboardTypingFeedbackDelegateKey"];

  return v4;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = [(VoiceOverKeyboardTypingFeedbackController *)self _specifiersForSoftware:1];
    v6 = [(VoiceOverKeyboardTypingFeedbackController *)self _specifiersForSoftware:0];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];
    v8 = [v7 copy];
    v9 = *(&self->super.super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.super.isa + v3) = v8;

    v4 = *(&self->super.super.super.super.super.super.isa + v3);
  }

  return v4;
}

- (void)viewWillAppear:(BOOL)appear
{
  v24[3] = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = VoiceOverKeyboardTypingFeedbackController;
  [(AccessibilityBridgeBaseController *)&v23 viewWillAppear:appear];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = objc_alloc(MEMORY[0x277CCAEB8]);
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"TYPING_FEEDBACK" table:@"VoiceOverSettings" locale:currentLocale bundleURL:bundleURL];

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
  v22 = [MEMORY[0x277CBEBC0] URLWithString:@"bridge:root=ACCESSIBILITY_ID&path=VOICEOVER_ID/KeyboardRow/TYPING_FEEDBACK_ID"];
  [v20 emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"ACCESSIBILITY_ID" title:v7 localizedNavigationComponents:v21 deepLink:v22];
}

- (id)_specifiersForSoftware:(BOOL)software
{
  softwareCopy = software;
  v36 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  actionDetailControllerDelegate = [(VoiceOverKeyboardTypingFeedbackController *)self actionDetailControllerDelegate];
  v26 = softwareCopy;
  v30 = [actionDetailControllerDelegate selectedTypingFeedbackWithSoftware:softwareCopy];

  array2 = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  obj = [(VoiceOverKeyboardTypingFeedbackController *)self _typingFeedbackArray];
  v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v32;
    v11 = *MEMORY[0x277D401A8];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        v14 = +[VoiceOverKeyboardTypingFeedbackController typingFeedbackShortStringDescription:](VoiceOverKeyboardTypingFeedbackController, "typingFeedbackShortStringDescription:", [v13 integerValue]);
        v15 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:0 cell:3 edit:0];
        [v15 setProperty:v13 forKey:v11];
        if ([v13 isEqualToNumber:v30])
        {
          v16 = v15;

          v9 = v16;
        }

        [array2 addObject:v15];
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if ([array2 count])
  {
    v17 = @"FEEDBACK_HARDWARE";
    if (v26)
    {
      v17 = @"FEEDBACK_SOFTWARE";
      v18 = MEMORY[0x277CE7F80];
    }

    else
    {
      v18 = MEMORY[0x277CE7F60];
    }

    v19 = v17;
    v20 = *v18;
    v21 = MEMORY[0x277D3FAD8];
    v22 = settingsLocString(v19, @"VoiceOverSettings");
    v23 = [v21 preferenceSpecifierNamed:v22 target:selfCopy set:0 get:0 detail:0 cell:0 edit:0];

    [v23 setProperty:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D3FFE8]];
    [v23 setProperty:v20 forKey:*MEMORY[0x277D3FFB8]];
    [array addObject:v23];
    if (v9)
    {
      [v23 setProperty:v9 forKey:*MEMORY[0x277D40090]];
    }

    [array addObjectsFromArray:array2];
  }

  v24 = array;

  return array;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v18.receiver = self;
  v18.super_class = VoiceOverKeyboardTypingFeedbackController;
  pathCopy = path;
  [(VoiceOverKeyboardTypingFeedbackController *)&v18 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(VoiceOverKeyboardTypingFeedbackController *)self indexForIndexPath:pathCopy, v18.receiver, v18.super_class];
  specifiers = [(VoiceOverKeyboardTypingFeedbackController *)self specifiers];
  v9 = [specifiers objectAtIndex:v7];

  section = [pathCopy section];
  v11 = [(VoiceOverKeyboardTypingFeedbackController *)self specifierAtIndex:[(VoiceOverKeyboardTypingFeedbackController *)self indexOfGroup:section]];
  v12 = [v11 propertyForKey:*MEMORY[0x277D3FFE8]];
  bOOLValue = [v12 BOOLValue];

  if (bOOLValue)
  {
    v14 = [v9 propertyForKey:*MEMORY[0x277D401A8]];
    if (v14)
    {
      v15 = [v11 propertyForKey:*MEMORY[0x277D3FFB8]];
      v16 = [v15 isEqualToString:*MEMORY[0x277CE7F80]];

      actionDetailControllerDelegate = [(VoiceOverKeyboardTypingFeedbackController *)self actionDetailControllerDelegate];
      [actionDetailControllerDelegate setTypingFeedback:v14 isSoftware:v16];

      [(VoiceOverKeyboardTypingFeedbackController *)self reloadSpecifiers];
    }
  }
}

+ (id)typingFeedbackShortStringDescription:(int64_t)description
{
  if (description > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = settingsLocString(off_278B90B50[description], @"VoiceOverSettings");
  }

  return v4;
}

@end