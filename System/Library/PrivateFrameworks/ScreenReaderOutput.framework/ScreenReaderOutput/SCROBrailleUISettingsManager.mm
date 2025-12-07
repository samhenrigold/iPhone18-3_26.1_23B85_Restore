@interface SCROBrailleUISettingsManager
+ (id)sharedInstance;
- (BOOL)calculatorUsesUEBMath;
- (BOOL)himsUsesDot7ForCommands;
- (BOOL)isBRFReflowEnabled;
- (BOOL)isBRFStripPageIndicatorsEnabled;
- (BOOL)isReadListItemsEnabled;
- (BOOL)isSpringBoardLocked;
- (BOOL)isTypingSpeechFeedbackEnabled;
- (BOOL)isVisualsEnabled;
- (BOOL)shouldReopenViewsWhenRestart;
- (BOOL)showsBackButton;
- (BOOL)usesUnderlineCursor;
- (float)liveSpeechPitchForKeyboardID:(id)d;
- (float)liveSpeechRateForKeyboardID:(id)d;
- (id)enabledMainMenuItems;
- (id)liveSpeechVoiceIDForKeyboardID:(id)d;
- (int64_t)zoomOutNumCellsPerElement;
- (unint64_t)brailleNotesSortDirection;
- (unint64_t)brailleNotesSortType;
- (unint64_t)liveCaptionsSource;
- (void)setLiveCaptionsSource:(unint64_t)source;
@end

@implementation SCROBrailleUISettingsManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[SCROBrailleUISettingsManager sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __46__SCROBrailleUISettingsManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SCROBrailleUISettingsManager);
  sharedInstance__sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (BOOL)isSpringBoardLocked
{
  v5 = 0;
  v2 = [getAXSpringBoardServerClass(self a2)];
  v3 = [v2 isScreenLockedWithPasscode:&v5];

  return v3 & v5;
}

- (id)enabledMainMenuItems
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v16 = [getAXSettingsClass(v2 v3)];
  voiceOverTouchBrailleUIMainMenuItems = [v16 voiceOverTouchBrailleUIMainMenuItems];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [voiceOverTouchBrailleUIMainMenuItems countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(voiceOverTouchBrailleUIMainMenuItems);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"enabled"];
        bOOLValue = [v10 BOOLValue];

        if (bOOLValue)
        {
          v12 = [v9 objectForKeyedSubscript:@"ID"];
          v13 = v12;
          if (v12 && ([v12 integerValue] - 1) <= 6)
          {
            v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
            [v2 addObject:v14];
          }
        }
      }

      v6 = [voiceOverTouchBrailleUIMainMenuItems countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v2;
}

- (BOOL)shouldReopenViewsWhenRestart
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleUIShouldReopenViewsWhenRestart = [v2 voiceOverTouchBrailleUIShouldReopenViewsWhenRestart];

  return voiceOverTouchBrailleUIShouldReopenViewsWhenRestart;
}

- (BOOL)isReadListItemsEnabled
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleUIReadListItemsEnabled = [v2 voiceOverTouchBrailleUIReadListItemsEnabled];

  return voiceOverTouchBrailleUIReadListItemsEnabled;
}

- (BOOL)showsBackButton
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleUIShowsBackButton = [v2 voiceOverTouchBrailleUIShowsBackButton];

  return voiceOverTouchBrailleUIShowsBackButton;
}

- (BOOL)isTypingSpeechFeedbackEnabled
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleUITypingSpeechFeedbackEnabled = [v2 voiceOverTouchBrailleUITypingSpeechFeedbackEnabled];

  return voiceOverTouchBrailleUITypingSpeechFeedbackEnabled;
}

- (BOOL)isVisualsEnabled
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleUIVisualsEnabled = [v2 voiceOverTouchBrailleUIVisualsEnabled];

  return voiceOverTouchBrailleUIVisualsEnabled;
}

- (unint64_t)brailleNotesSortType
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleUIBrailleNotesSortType = [v2 voiceOverTouchBrailleUIBrailleNotesSortType];

  return voiceOverTouchBrailleUIBrailleNotesSortType != 0;
}

- (unint64_t)brailleNotesSortDirection
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleUIBrailleNotesSortDirection = [v2 voiceOverTouchBrailleUIBrailleNotesSortDirection];

  return voiceOverTouchBrailleUIBrailleNotesSortDirection != 0;
}

- (BOOL)calculatorUsesUEBMath
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleUICalculatorUsesUEBMath = [v2 voiceOverTouchBrailleUICalculatorUsesUEBMath];

  return voiceOverTouchBrailleUICalculatorUsesUEBMath;
}

- (unint64_t)liveCaptionsSource
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleUILiveCaptionsSource = [v2 voiceOverTouchBrailleUILiveCaptionsSource];

  return voiceOverTouchBrailleUILiveCaptionsSource != 0;
}

- (void)setLiveCaptionsSource:(unint64_t)source
{
  v3 = source != 0;
  v4 = [getAXSettingsClass(self a2)];
  [v4 setVoiceOverTouchBrailleUILiveCaptionsSource:v3];
}

- (id)liveSpeechVoiceIDForKeyboardID:(id)d
{
  v3 = getAXSettingsClass;
  dCopy = d;
  sharedInstance = [(objc_class *)v3() sharedInstance];
  v6 = [sharedInstance liveSpeechVoiceIdentifierForKeyboardID:dCopy];

  return v6;
}

- (float)liveSpeechRateForKeyboardID:(id)d
{
  v3 = getAXSettingsClass;
  dCopy = d;
  sharedInstance = [(objc_class *)v3() sharedInstance];
  [sharedInstance liveSpeechRateForKeyboardID:dCopy];
  v7 = v6;

  return v7;
}

- (float)liveSpeechPitchForKeyboardID:(id)d
{
  v3 = getAXSettingsClass;
  dCopy = d;
  sharedInstance = [(objc_class *)v3() sharedInstance];
  [sharedInstance liveSpeechPitchForKeyboardID:dCopy];
  v7 = v6;

  return v7;
}

- (BOOL)isBRFReflowEnabled
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleUIIsBRFReflowEnabled = [v2 voiceOverTouchBrailleUIIsBRFReflowEnabled];

  return voiceOverTouchBrailleUIIsBRFReflowEnabled;
}

- (BOOL)isBRFStripPageIndicatorsEnabled
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled = [v2 voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled];

  return voiceOverTouchBrailleUIIsBRFStripPageIndicatorsEnabled;
}

- (int64_t)zoomOutNumCellsPerElement
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleZoomOutNumCellsPerElement = [v2 voiceOverTouchBrailleZoomOutNumCellsPerElement];

  return voiceOverTouchBrailleZoomOutNumCellsPerElement;
}

- (BOOL)himsUsesDot7ForCommands
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleHIMSUsesDot7ForCommand = [v2 voiceOverTouchBrailleHIMSUsesDot7ForCommand];

  return voiceOverTouchBrailleHIMSUsesDot7ForCommand;
}

- (BOOL)usesUnderlineCursor
{
  v2 = [getAXSettingsClass(self a2)];
  voiceOverTouchBrailleUsesUnderlineCursor = [v2 voiceOverTouchBrailleUsesUnderlineCursor];

  return voiceOverTouchBrailleUsesUnderlineCursor;
}

@end