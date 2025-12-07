@interface CLFMessagesSettings_GeneratedCode
+ (CLFMessagesSettings)sharedInstance;
+ (id)allPreferenceSelectorsAsStrings;
- (BOOL)photoKeyboardEnabled;
- (CLFMessagesSettings_GeneratedCode)init;
- (void)setConversationDetailsEnabled:(BOOL)enabled;
- (void)setEmojiKeyboardEnabled:(BOOL)enabled;
- (void)setPhotoKeyboardEnabled:(BOOL)enabled;
- (void)setSoftwareKeyboardEnabled:(BOOL)enabled;
- (void)setTapToSpeakEnabled:(BOOL)enabled;
- (void)setVideoRecordingEnabled:(BOOL)enabled;
@end

@implementation CLFMessagesSettings_GeneratedCode

+ (CLFMessagesSettings)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[CLFMessagesSettings_GeneratedCode sharedInstance];
  }

  v3 = sharedInstance_SharedSettings_2;

  return v3;
}

- (CLFMessagesSettings_GeneratedCode)init
{
  v17.receiver = self;
  v17.super_class = CLFMessagesSettings_GeneratedCode;
  v2 = [(CLFBaseCommunicationLimitSettings_GeneratedCode *)&v17 init];
  v3 = v2;
  if (v2)
  {
    preferenceKeysBySelectorName = [(CLFBaseSettings *)v2 preferenceKeysBySelectorName];
    v5 = NSStringFromSelector(sel_conversationDetailsEnabled);
    [preferenceKeysBySelectorName setObject:@"ConversationDetailsEnabled" forKeyedSubscript:v5];

    preferenceKeysBySelectorName2 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v7 = NSStringFromSelector(sel_emojiKeyboardEnabled);
    [preferenceKeysBySelectorName2 setObject:@"EmojiKeyboardEnabled" forKeyedSubscript:v7];

    preferenceKeysBySelectorName3 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v9 = NSStringFromSelector(sel_photoKeyboardEnabled);
    [preferenceKeysBySelectorName3 setObject:@"PhotoKeyboardEnabled" forKeyedSubscript:v9];

    preferenceKeysBySelectorName4 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v11 = NSStringFromSelector(sel_softwareKeyboardEnabled);
    [preferenceKeysBySelectorName4 setObject:@"SoftwareKeyboardEnabled" forKeyedSubscript:v11];

    preferenceKeysBySelectorName5 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v13 = NSStringFromSelector(sel_tapToSpeakEnabled);
    [preferenceKeysBySelectorName5 setObject:@"TapToSpeakEnabled" forKeyedSubscript:v13];

    preferenceKeysBySelectorName6 = [(CLFBaseSettings *)v3 preferenceKeysBySelectorName];
    v15 = NSStringFromSelector(sel_videoRecordingEnabled);
    [preferenceKeysBySelectorName6 setObject:@"VideoRecordingEnabled" forKeyedSubscript:v15];
  }

  return v3;
}

+ (id)allPreferenceSelectorsAsStrings
{
  v13[6] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___CLFMessagesSettings_GeneratedCode;
  v2 = objc_msgSendSuper2(&v12, sel_allPreferenceSelectorsAsStrings);
  v3 = NSStringFromSelector(sel_conversationDetailsEnabled);
  v13[0] = v3;
  v4 = NSStringFromSelector(sel_emojiKeyboardEnabled);
  v13[1] = v4;
  v5 = NSStringFromSelector(sel_photoKeyboardEnabled);
  v13[2] = v5;
  v6 = NSStringFromSelector(sel_softwareKeyboardEnabled);
  v13[3] = v6;
  v7 = NSStringFromSelector(sel_tapToSpeakEnabled);
  v13[4] = v7;
  v8 = NSStringFromSelector(sel_videoRecordingEnabled);
  v13[5] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:6];
  v10 = [v2 arrayByAddingObjectsFromArray:v9];

  return v10;
}

- (void)setConversationDetailsEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"ConversationDetailsEnabled"];
}

- (void)setEmojiKeyboardEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"EmojiKeyboardEnabled"];
}

- (BOOL)photoKeyboardEnabled
{
  softwareKeyboardEnabled = [(CLFMessagesSettings_GeneratedCode *)self softwareKeyboardEnabled];
  v4 = [(CLFMessagesSettings_GeneratedCode *)self emojiKeyboardEnabled]+ softwareKeyboardEnabled;
  v5 = v4 + [(CLFMessagesSettings_GeneratedCode *)self videoRecordingEnabled]> 1;

  return [(AXBaseSettings *)self BOOLValueForPreferenceKey:@"PhotoKeyboardEnabled" defaultValue:v5];
}

- (void)setPhotoKeyboardEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"PhotoKeyboardEnabled"];
}

- (void)setSoftwareKeyboardEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"SoftwareKeyboardEnabled"];
}

- (void)setTapToSpeakEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"TapToSpeakEnabled"];
}

- (void)setVideoRecordingEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [(AXBaseSettings *)self setValue:v4 forPreferenceKey:@"VideoRecordingEnabled"];
}

@end