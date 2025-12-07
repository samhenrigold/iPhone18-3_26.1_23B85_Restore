@interface VOSCommandCategory
+ (BOOL)categories:(id)categories containsCommand:(id)command;
+ (NSArray)allCategories;
+ (VOSCommandCategory)advancedNavigation;
+ (VOSCommandCategory)basicNavigation;
+ (VOSCommandCategory)braille;
+ (VOSCommandCategory)brailleScreenInput;
+ (VOSCommandCategory)editing;
+ (VOSCommandCategory)handwriting;
+ (VOSCommandCategory)interaction;
+ (VOSCommandCategory)internalOnly;
+ (VOSCommandCategory)other;
+ (VOSCommandCategory)output;
+ (VOSCommandCategory)rotor;
+ (VOSCommandCategory)scrolling;
+ (VOSCommandCategory)speechAndAudio;
+ (VOSCommandCategory)system;
+ (VOSCommandCategory)textNavigation;
+ (VOSCommandCategory)voiceOverFeatures;
- (BOOL)containsCommand:(id)command;
- (VOSCommandCategory)init;
- (VOSCommandCategory)initWithCommands:(id)commands localizedCategoryName:(id)name;
@end

@implementation VOSCommandCategory

+ (VOSCommandCategory)interaction
{
  v12[5] = *MEMORY[0x277D85DE8];
  v2 = +[VOSCommand PrimaryActivate];
  v3 = +[VOSCommand SecondaryActivate];
  v12[1] = v3;
  v4 = +[VOSCommand MagicTap];
  v12[2] = v4;
  v5 = +[VOSCommand Escape];
  v12[3] = v5;
  v6 = +[VOSCommand PerformLongPress];
  v12[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:5];

  v8 = [VOSCommandCategory alloc];
  v9 = VOSLocString(@"VOSCommandCategory.Interaction");
  v10 = [(VOSCommandCategory *)v8 initWithCommands:v7 localizedCategoryName:v9];

  return v10;
}

+ (VOSCommandCategory)basicNavigation
{
  v27[17] = *MEMORY[0x277D85DE8];
  v26 = +[VOSCommand MoveToPreviousElement];
  v27[0] = v26;
  v25 = +[VOSCommand MoveToNextElement];
  v27[1] = v25;
  v24 = +[VOSCommand MoveToFirstElement];
  v27[2] = v24;
  v23 = +[VOSCommand MoveToElementAbove];
  v27[3] = v23;
  v22 = +[VOSCommand MoveToElementBelow];
  v27[4] = v22;
  v21 = +[VOSCommand MoveToLastElement];
  v27[5] = v21;
  v20 = +[VOSCommand MoveToCenterElement];
  v27[6] = v20;
  v19 = +[VOSCommand MoveToPreviousContainer];
  v27[7] = v19;
  v18 = +[VOSCommand MoveToNextContainer];
  v27[8] = v18;
  v2 = +[VOSCommand MoveToTopOfCurrentContainer];
  v27[9] = v2;
  v3 = +[VOSCommand MoveToBottomOfCurrentContainer];
  v27[10] = v3;
  v4 = +[VOSCommand MoveToTopOfCurrentDocument];
  v27[11] = v4;
  v5 = +[VOSCommand MoveToBottomOfCurrentDocument];
  v27[12] = v5;
  v6 = +[VOSCommand MoveToLinkedUI];
  v27[13] = v6;
  v7 = +[VOSCommand MoveToStatusBar];
  v27[14] = v7;
  v8 = +[VOSCommand MoveToPreviousElementCommunity];
  v27[15] = v8;
  v9 = +[VOSCommand MoveToNextElementCommunity];
  v27[16] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:17];

  if (_os_feature_enabled_impl())
  {
    v11 = +[VOSCommand MoveIn];
    v12 = [v10 arrayByAddingObject:v11];

    v13 = +[VOSCommand MoveOut];
    v10 = [v12 arrayByAddingObject:v13];
  }

  v14 = [VOSCommandCategory alloc];
  v15 = VOSLocString(@"VOSCommandCategory.BasicNavigation");
  v16 = [(VOSCommandCategory *)v14 initWithCommands:v10 localizedCategoryName:v15];

  return v16;
}

+ (VOSCommandCategory)textNavigation
{
  v35[28] = *MEMORY[0x277D85DE8];
  v34 = +[VOSCommand MoveToPreviousCharacter];
  v35[0] = v34;
  v33 = +[VOSCommand MoveToNextCharacter];
  v35[1] = v33;
  v32 = +[VOSCommand MoveToPreviousWord];
  v35[2] = v32;
  v31 = +[VOSCommand MoveToNextWord];
  v35[3] = v31;
  v30 = +[VOSCommand MoveToPreviousSentence];
  v35[4] = v30;
  v29 = +[VOSCommand MoveToNextSentence];
  v35[5] = v29;
  v28 = +[VOSCommand MoveToPreviousParagraph];
  v35[6] = v28;
  v27 = +[VOSCommand MoveToNextParagraph];
  v35[7] = v27;
  v26 = +[VOSCommand MoveToPreviousStyleChange];
  v35[8] = v26;
  v25 = +[VOSCommand MoveToNextStyleChange];
  v35[9] = v25;
  v24 = +[VOSCommand MoveToPreviousFontChange];
  v35[10] = v24;
  v23 = +[VOSCommand MoveToNextFontChange];
  v35[11] = v23;
  v22 = +[VOSCommand MoveToPreviousUnderlineText];
  v35[12] = v22;
  v21 = +[VOSCommand MoveToNextUnderlineText];
  v35[13] = v21;
  v20 = +[VOSCommand MoveToPreviousItalicText];
  v35[14] = v20;
  v19 = +[VOSCommand MoveToNextItalicText];
  v35[15] = v19;
  v18 = +[VOSCommand MoveToPreviousBoldText];
  v35[16] = v18;
  v16 = +[VOSCommand MoveToNextBoldText];
  v35[17] = v16;
  v2 = +[VOSCommand MoveToPreviousColorChange];
  v35[18] = v2;
  v3 = +[VOSCommand MoveToNextColorChange];
  v35[19] = v3;
  v4 = +[VOSCommand MoveToPreviousPlainText];
  v35[20] = v4;
  v5 = +[VOSCommand MoveToNextPlainText];
  v35[21] = v5;
  v6 = +[VOSCommand MoveToPreviousMisspelledWord];
  v35[22] = v6;
  v7 = +[VOSCommand MoveToNextMisspelledWord];
  v35[23] = v7;
  v8 = +[VOSCommand MoveToPreviousBlockquote];
  v35[24] = v8;
  v9 = +[VOSCommand MoveToNextBlockquote];
  v35[25] = v9;
  v10 = +[VOSCommand MoveToPreviousSameBlockquote];
  v35[26] = v10;
  v11 = +[VOSCommand MoveToNextSameBlockquote];
  v35[27] = v11;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:28];

  v12 = [VOSCommandCategory alloc];
  v13 = VOSLocString(@"VOSCommandCategory.TextNavigation");
  v14 = [(VOSCommandCategory *)v12 initWithCommands:v17 localizedCategoryName:v13];

  return v14;
}

+ (VOSCommandCategory)editing
{
  v12[5] = *MEMORY[0x277D85DE8];
  v2 = +[VOSCommand Cut];
  v3 = +[VOSCommand Copy];
  v12[1] = v3;
  v4 = +[VOSCommand Paste];
  v12[2] = v4;
  v5 = +[VOSCommand Undo];
  v12[3] = v5;
  v6 = +[VOSCommand Redo];
  v12[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:5];

  v8 = [VOSCommandCategory alloc];
  v9 = VOSLocString(@"VOSCommandCategory.Editing");
  v10 = [(VOSCommandCategory *)v8 initWithCommands:v7 localizedCategoryName:v9];

  return v10;
}

+ (VOSCommandCategory)advancedNavigation
{
  v39[32] = *MEMORY[0x277D85DE8];
  v38 = +[VOSCommand MoveToPreviousFrame];
  v39[0] = v38;
  v37 = +[VOSCommand MoveToNextFrame];
  v39[1] = v37;
  v36 = +[VOSCommand MoveToPreviousTable];
  v39[2] = v36;
  v35 = +[VOSCommand MoveToNextTable];
  v39[3] = v35;
  v34 = +[VOSCommand MoveToPreviousColumn];
  v39[4] = v34;
  v33 = +[VOSCommand MoveToNextColumn];
  v39[5] = v33;
  v32 = +[VOSCommand MoveToPreviousList];
  v39[6] = v32;
  v31 = +[VOSCommand MoveToNextList];
  v39[7] = v31;
  v30 = +[VOSCommand MoveToPreviousSameElement];
  v39[8] = v30;
  v29 = +[VOSCommand MoveToNextSameElement];
  v39[9] = v29;
  v28 = +[VOSCommand MoveToPreviousDifferentElement];
  v39[10] = v28;
  v27 = +[VOSCommand MoveToNextDifferentElement];
  v39[11] = v27;
  v26 = +[VOSCommand MoveToPreviousHeading];
  v39[12] = v26;
  v25 = +[VOSCommand MoveToNextHeading];
  v39[13] = v25;
  v24 = +[VOSCommand MoveToPreviousSameHeading];
  v39[14] = v24;
  v23 = +[VOSCommand MoveToNextSameHeading];
  v39[15] = v23;
  v22 = +[VOSCommand MoveToPreviousLink];
  v39[16] = v22;
  v21 = +[VOSCommand MoveToNextLink];
  v39[17] = v21;
  v20 = +[VOSCommand MoveToPreviousVisitedLink];
  v39[18] = v20;
  v19 = +[VOSCommand MoveToNextVisitedLink];
  v39[19] = v19;
  v17 = +[VOSCommand MoveToPreviousControl];
  v39[20] = v17;
  v16 = +[VOSCommand MoveToNextControl];
  v39[21] = v16;
  v2 = +[VOSCommand MoveToPreviousGraphic];
  v39[22] = v2;
  v3 = +[VOSCommand MoveToNextRadioGroup];
  v39[23] = v3;
  v4 = +[VOSCommand MoveToPreviousRadioGroup];
  v39[24] = v4;
  v5 = +[VOSCommand MoveToNextCheckbox];
  v39[25] = v5;
  v6 = +[VOSCommand MoveToPreviousCheckbox];
  v39[26] = v6;
  v7 = +[VOSCommand MoveToNextGraphic];
  v39[27] = v7;
  v8 = +[VOSCommand MoveToSystemFocusedElement];
  v39[28] = v8;
  v9 = +[VOSCommand FindElementWithTextSearch];
  v39[29] = v9;
  v10 = +[VOSCommand PreviousSearchResult];
  v39[30] = v10;
  v11 = +[VOSCommand NextSearchResult];
  v39[31] = v11;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:32];

  v12 = [VOSCommandCategory alloc];
  v13 = VOSLocString(@"VOSCommandCategory.AdvancedNavigation");
  v14 = [(VOSCommandCategory *)v12 initWithCommands:v18 localizedCategoryName:v13];

  return v14;
}

+ (VOSCommandCategory)braille
{
  v21[14] = *MEMORY[0x277D85DE8];
  v20 = +[VOSCommand BraillePanLeft];
  v21[0] = v20;
  v19 = +[VOSCommand BraillePanRight];
  v21[1] = v19;
  v18 = +[VOSCommand BrailleNextInputTable];
  v21[2] = v18;
  v17 = +[VOSCommand BrailleNextOutputTable];
  v21[3] = v17;
  v16 = +[VOSCommand BrailleAnnouncementMode];
  v21[4] = v16;
  v2 = +[VOSCommand BrailleTranslate];
  v21[5] = v2;
  v3 = +[VOSCommand BrailleToggleWordWrap];
  v21[6] = v3;
  v4 = +[VOSCommand BrailleTranslateToClipboard];
  v21[7] = v4;
  v5 = +[VOSCommand BrailleEnableAutoAdvance];
  v21[8] = v5;
  v6 = +[VOSCommand BrailleIncreaseAutoAdvance];
  v21[9] = v6;
  v7 = +[VOSCommand BrailleDecreaseAutoAdvance];
  v21[10] = v7;
  v8 = +[VOSCommand BrailleReconnectBrailleDisplays];
  v21[11] = v8;
  v9 = +[VOSCommand BrailleTogglePerkinsKeyboardInput];
  v21[12] = v9;
  v10 = +[VOSCommand BrailleToggleKeyboardBrailleUI];
  v21[13] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:14];

  v12 = [VOSCommandCategory alloc];
  v13 = VOSLocString(@"VOSCommandCategory.Braille");
  v14 = [(VOSCommandCategory *)v12 initWithCommands:v11 localizedCategoryName:v13];

  return v14;
}

+ (VOSCommandCategory)speechAndAudio
{
  v14[7] = *MEMORY[0x277D85DE8];
  v2 = +[VOSCommand ToggleMute];
  v3 = +[VOSCommand ToggleSpeech];
  v14[1] = v3;
  v4 = +[VOSCommand ChangeAudioDuckingMode];
  v14[2] = v4;
  v5 = +[VOSCommand VolumeUp];
  v14[3] = v5;
  v6 = +[VOSCommand VolumeDown];
  v14[4] = v6;
  v7 = +[VOSCommand NextSpeechVoice];
  v14[5] = v7;
  v8 = +[VOSCommand PreviousSpeechVoice];
  v14[6] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:7];

  v10 = [VOSCommandCategory alloc];
  v11 = VOSLocString(@"VOSCommandCategory.SpeechAndAudio");
  v12 = [(VOSCommandCategory *)v10 initWithCommands:v9 localizedCategoryName:v11];

  return v12;
}

+ (VOSCommandCategory)output
{
  v35[21] = *MEMORY[0x277D85DE8];
  v33 = +[VOSCommand SummarizeElement];
  v35[0] = v33;
  v32 = +[VOSCommand AnalyzeElement];
  v35[1] = v32;
  v31 = +[VOSCommand ReadAll];
  v35[2] = v31;
  v30 = +[VOSCommand ReadFromTop];
  v35[3] = v30;
  v29 = +[VOSCommand ReadLine];
  v35[4] = v29;
  v28 = +[VOSCommand ReadWord];
  v35[5] = v28;
  v27 = +[VOSCommand ReadURL];
  v35[6] = v27;
  v26 = +[VOSCommand ReadSelectedText];
  v35[7] = v26;
  v25 = +[VOSCommand ReadTextStyle];
  v35[8] = v25;
  v24 = +[VOSCommand ReadHint];
  v35[9] = v24;
  v23 = +[VOSCommand ReadCharacter];
  v35[10] = v23;
  v22 = +[VOSCommand ReadCharacterPhonetically];
  v35[11] = v22;
  v21 = +[VOSCommand ReadRowHeader];
  v35[12] = v21;
  v2 = +[VOSCommand ReadRowContents];
  v35[13] = v2;
  v3 = +[VOSCommand ReadTableRowColumn];
  v35[14] = v3;
  v4 = +[VOSCommand ReadTableRowColumnCell];
  v35[15] = v4;
  v5 = +[VOSCommand ReadColumnHeader];
  v35[16] = v5;
  v6 = +[VOSCommand ReadColumnContents];
  v35[17] = v6;
  v7 = +[VOSCommand ReadLineCount];
  v35[18] = v7;
  v8 = +[VOSCommand SummarizeSystemFocusedElement];
  v35[19] = v8;
  v9 = +[VOSCommand ReadSystemFocusedElementDetails];
  v35[20] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:21];

  if (AXRuntimeCheck_SupportsVoiceOverReadPrefixes())
  {
    v11 = +[VOSCommand ReadAllPrefixes];
    v34[0] = v11;
    v12 = +[VOSCommand ReadFromTopPrefixes];
    v34[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v14 = [v10 arrayByAddingObjectsFromArray:v13];

    v10 = v14;
  }

  if (AXDeviceHasForcePress3dTouch())
  {
    v15 = +[VOSCommand PreviewElementWith3DTouch];
    v16 = [v10 arrayByAddingObject:v15];

    v10 = v16;
  }

  v17 = [VOSCommandCategory alloc];
  v18 = VOSLocString(@"VOSCommandCategory.Output");
  v19 = [(VOSCommandCategory *)v17 initWithCommands:v10 localizedCategoryName:v18];

  return v19;
}

+ (VOSCommandCategory)rotor
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = +[VOSCommand PreviousRotor];
  v11[0] = v2;
  v3 = +[VOSCommand NextRotor];
  v11[1] = v3;
  v4 = +[VOSCommand PreviousRotorItem];
  v11[2] = v4;
  v5 = +[VOSCommand NextRotorItem];
  v11[3] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];

  v7 = [VOSCommandCategory alloc];
  v8 = VOSLocString(@"VOSCommandCategory.Rotor");
  v9 = [(VOSCommandCategory *)v7 initWithCommands:v6 localizedCategoryName:v8];

  return v9;
}

+ (VOSCommandCategory)scrolling
{
  v13[6] = *MEMORY[0x277D85DE8];
  v2 = +[VOSCommand ScrollLeft];
  v13[0] = v2;
  v3 = +[VOSCommand ScrollRight];
  v13[1] = v3;
  v4 = +[VOSCommand ScrollUp];
  v13[2] = v4;
  v5 = +[VOSCommand ScrollDown];
  v13[3] = v5;
  v6 = +[VOSCommand ScrollToTop];
  v13[4] = v6;
  v7 = +[VOSCommand ScrollToBottom];
  v13[5] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:6];

  v9 = [VOSCommandCategory alloc];
  v10 = VOSLocString(@"VOSCommandCategory.Scrolling");
  v11 = [(VOSCommandCategory *)v9 initWithCommands:v8 localizedCategoryName:v10];

  return v11;
}

+ (VOSCommandCategory)voiceOverFeatures
{
  v33[16] = *MEMORY[0x277D85DE8];
  v32 = +[VOSCommand ShowItemChooser];
  v33[0] = v32;
  v31 = +[VOSCommand OpenVoiceOverSettings];
  v33[1] = v31;
  v30 = +[VOSCommand ToggleScreenCurtain];
  v33[2] = v30;
  v29 = +[VOSCommand ToggleSoundCurtain];
  v33[3] = v29;
  v28 = +[VOSCommand StartHelp];
  v33[4] = v28;
  v27 = +[VOSCommand ToggleCaptionPanel];
  v33[5] = v27;
  v26 = +[VOSCommand ToggleIgnoreTrackpad];
  v33[6] = v26;
  v25 = +[VOSCommand LabelElement];
  v33[7] = v25;
  v2 = +[VOSCommand MonitorElement];
  v33[8] = v2;
  v3 = +[VOSCommand ToggleSingleLetterQuickNav];
  v33[9] = v3;
  v4 = +[VOSCommand ToggleQuickNav];
  v33[10] = v4;
  v5 = +[VOSCommand ToggleLockModifierKeys];
  v33[11] = v5;
  v6 = +[VOSCommand ToggleLiveRegions];
  v33[12] = v6;
  v7 = +[VOSCommand ActivateBrailleScreenInput];
  v33[13] = v7;
  v8 = +[VOSCommand ActivateBrailleScreenInputCommand];
  v33[14] = v8;
  v9 = +[VOSCommand LaunchPeopleDetection];
  v33[15] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:16];

  if ((AXDeviceIsPad() & 1) == 0)
  {
    v11 = +[VOSCommand ActivateBrailleScreenInputPreferringSingleHand];
    v12 = [v10 arrayByAddingObject:v11];

    v10 = v12;
  }

  processInfo = [MEMORY[0x277CCAC38] processInfo];
  if ([processInfo physicalMemory] > 0x773593FF)
  {
    v14 = AXRuntimeCheck_HasANE();

    if (!v14)
    {
      goto LABEL_7;
    }

    processInfo = +[VOSCommand DescribeImage];
    v15 = [v10 arrayByAddingObject:processInfo];

    v10 = v15;
  }

LABEL_7:
  if (_os_feature_enabled_impl())
  {
    v16 = +[VOSCommand ToggleSettingsHUD];
    v17 = [v10 arrayByAddingObject:v16];

    v10 = v17;
  }

  processInfo2 = [MEMORY[0x277CCAC38] processInfo];
  if ([processInfo2 physicalMemory] > 0x773593FF)
  {
    v19 = AXRuntimeCheck_HasANE();

    if (!v19)
    {
      goto LABEL_13;
    }

    processInfo2 = +[VOSCommand ToggleAutomaticAccessibility];
    v20 = [v10 arrayByAddingObject:processInfo2];

    v10 = v20;
  }

LABEL_13:
  v21 = [VOSCommandCategory alloc];
  v22 = VOSLocString(@"VOSCommandCategory.VoiceOverFeatures");
  v23 = [(VOSCommandCategory *)v21 initWithCommands:v10 localizedCategoryName:v22];

  return v23;
}

+ (VOSCommandCategory)system
{
  v24[15] = *MEMORY[0x277D85DE8];
  v23 = +[VOSCommand ShowNotificationCenter];
  v24[0] = v23;
  v22 = +[VOSCommand ShowControlCenter];
  v24[1] = v22;
  v21 = +[VOSCommand ActivateSpeakScreen];
  v24[2] = v21;
  v20 = +[VOSCommand ActivateHomeButton];
  v24[3] = v20;
  v19 = +[VOSCommand ToggleDock];
  v24[4] = v19;
  v18 = +[VOSCommand ToggleAppSwitcher];
  v24[5] = v18;
  v17 = +[VOSCommand ActivateLockButton];
  v24[6] = v17;
  v2 = +[VOSCommand ShowSpotlight];
  v24[7] = v2;
  v3 = +[VOSCommand ActivateAccessibilityShortcut];
  v24[8] = v3;
  v4 = +[VOSCommand ToggleReachability];
  v24[9] = v4;
  v5 = +[VOSCommand TakeScreenshot];
  v24[10] = v5;
  v6 = +[VOSCommand ToggleTypeToSiri];
  v24[11] = v6;
  v7 = +[VOSCommand SwitchToPreviousApp];
  v24[12] = v7;
  v8 = +[VOSCommand SwitchToNextApp];
  v24[13] = v8;
  v9 = +[VOSCommand NextKeyboardLanguage];
  v24[14] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:15];

  if (AXDeviceIsPad())
  {
    v11 = +[VOSCommand ToggleQuickNote];
    v12 = [v10 arrayByAddingObject:v11];

    v10 = v12;
  }

  v13 = [VOSCommandCategory alloc];
  v14 = VOSLocString(@"VOSCommandCategory.System");
  v15 = [(VOSCommandCategory *)v13 initWithCommands:v10 localizedCategoryName:v14];

  return v15;
}

+ (VOSCommandCategory)other
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = +[VOSCommand ToggleTextSelection];
  v9[0] = v2;
  v3 = +[VOSCommand CopySpeechToClipboard];
  v9[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];

  v5 = [VOSCommandCategory alloc];
  v6 = VOSLocString(@"VOSCommandCategory.Other");
  v7 = [(VOSCommandCategory *)v5 initWithCommands:v4 localizedCategoryName:v6];

  return v7;
}

+ (VOSCommandCategory)internalOnly
{
  v2 = [VOSCommandCategory alloc];
  if (AXIsInternalInstall())
  {
    v3 = @"Internal Only";
  }

  else
  {
    v3 = &stru_283729578;
  }

  v4 = [(VOSCommandCategory *)v2 initWithCommands:MEMORY[0x277CBEBF8] localizedCategoryName:v3];

  return v4;
}

+ (NSArray)allCategories
{
  v19[13] = *MEMORY[0x277D85DE8];
  v18 = +[VOSCommandCategory interaction];
  v19[0] = v18;
  v17 = +[VOSCommandCategory basicNavigation];
  v19[1] = v17;
  v16 = +[VOSCommandCategory textNavigation];
  v19[2] = v16;
  v15 = +[VOSCommandCategory advancedNavigation];
  v19[3] = v15;
  v14 = +[VOSCommandCategory editing];
  v19[4] = v14;
  v2 = +[VOSCommandCategory rotor];
  v19[5] = v2;
  v3 = +[VOSCommandCategory scrolling];
  v19[6] = v3;
  v4 = +[VOSCommandCategory speechAndAudio];
  v19[7] = v4;
  v5 = +[VOSCommandCategory output];
  v19[8] = v5;
  v6 = +[VOSCommandCategory braille];
  v19[9] = v6;
  v7 = +[VOSCommandCategory voiceOverFeatures];
  v19[10] = v7;
  v8 = +[VOSCommandCategory system];
  v19[11] = v8;
  v9 = +[VOSCommandCategory other];
  v19[12] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:13];

  if (AXIsInternalInstall())
  {
    v11 = [v10 mutableCopy];
    v12 = +[VOSCommandCategory internalOnly];
    [v11 addObject:v12];

    v10 = v11;
  }

  return v10;
}

+ (VOSCommandCategory)handwriting
{
  v18[11] = *MEMORY[0x277D85DE8];
  v17 = +[VOSCommand PreviousHandwritingCharacterMode];
  v18[0] = v17;
  v16 = +[VOSCommand NextHandwritingCharacterMode];
  v18[1] = v16;
  v2 = +[VOSCommand AnnounceHandwritingCharacterMode];
  v18[2] = v2;
  v3 = +[VOSCommand GesturedTextInputInsertSpace];
  v18[3] = v3;
  v4 = +[VOSCommand GesturedTextInputBackspace];
  v18[4] = v4;
  v5 = +[VOSCommand GesturedTextInputDeleteWord];
  v18[5] = v5;
  v6 = +[VOSCommand GesturedTextInputPerformReturnEquivalent];
  v18[6] = v6;
  v7 = +[VOSCommand GesturedTextInputPreviousSuggestion];
  v18[7] = v7;
  v8 = +[VOSCommand GesturedTextInputNextSuggestion];
  v18[8] = v8;
  v9 = +[VOSCommand GesturedTextInputLaunchApp];
  v18[9] = v9;
  v10 = +[VOSCommand GesturedTextInputNextKeyboardLanguage];
  v18[10] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:11];

  v12 = [VOSCommandCategory alloc];
  v13 = VOSLocString(@"VOSCommandCategory.Handwriting");
  v14 = [(VOSCommandCategory *)v12 initWithCommands:v11 localizedCategoryName:v13];

  return v14;
}

+ (VOSCommandCategory)brailleScreenInput
{
  v27[20] = *MEMORY[0x277D85DE8];
  v26 = +[VOSCommand BSIExit];
  v27[0] = v26;
  v25 = +[VOSCommand BSIPreviousBrailleMode];
  v27[1] = v25;
  v24 = +[VOSCommand BSINextBrailleMode];
  v27[2] = v24;
  v23 = +[VOSCommand BSITranslateImmediately];
  v27[3] = v23;
  v22 = +[VOSCommand BSIOrientationLock];
  v27[4] = v22;
  v21 = +[VOSCommand BSIQuickAction];
  v27[5] = v21;
  v20 = +[VOSCommand GesturedTextInputInsertSpace];
  v27[6] = v20;
  v19 = +[VOSCommand GesturedTextInputBackspace];
  v27[7] = v19;
  v18 = +[VOSCommand GesturedTextInputDeleteWord];
  v27[8] = v18;
  v17 = +[VOSCommand GesturedTextInputPerformReturnEquivalent];
  v27[9] = v17;
  v16 = +[VOSCommand GesturedTextInputPreviousSuggestion];
  v27[10] = v16;
  v2 = +[VOSCommand GesturedTextInputNextSuggestion];
  v27[11] = v2;
  v3 = +[VOSCommand GesturedTextInputLaunchApp];
  v27[12] = v3;
  v4 = +[VOSCommand GesturedTextInputNextKeyboardLanguage];
  v27[13] = v4;
  v5 = +[VOSCommand GesturedTextInputNextBrailleTable];
  v27[14] = v5;
  v6 = +[VOSCommand Cut];
  v27[15] = v6;
  v7 = +[VOSCommand Copy];
  v27[16] = v7;
  v8 = +[VOSCommand Paste];
  v27[17] = v8;
  v9 = +[VOSCommand Undo];
  v27[18] = v9;
  v10 = +[VOSCommand Redo];
  v27[19] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:20];

  v12 = [VOSCommandCategory alloc];
  v13 = VOSLocString(@"VOSCommandCategory.BSI");
  v14 = [(VOSCommandCategory *)v12 initWithCommands:v11 localizedCategoryName:v13];

  return v14;
}

- (VOSCommandCategory)initWithCommands:(id)commands localizedCategoryName:(id)name
{
  commandsCopy = commands;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = VOSCommandCategory;
  v8 = [(VOSCommandCategory *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(VOSCommandCategory *)v8 setLocalizedCategoryName:nameCopy];
    v10 = [commandsCopy sortedArrayUsingComparator:&__block_literal_global_8];
    [(VOSCommandCategory *)v9 setCommands:v10];
  }

  return v9;
}

uint64_t __61__VOSCommandCategory_initWithCommands_localizedCategoryName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedName];
  v6 = [v4 localizedName];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

- (VOSCommandCategory)init
{
  array = [MEMORY[0x277CBEA60] array];
  v4 = [(VOSCommandCategory *)self initWithCommands:array localizedCategoryName:&stru_283729578];

  return v4;
}

- (BOOL)containsCommand:(id)command
{
  commandCopy = command;
  commands = [(VOSCommandCategory *)self commands];
  v6 = [commands containsObject:commandCopy];

  return v6;
}

+ (BOOL)categories:(id)categories containsCommand:(id)command
{
  v17 = *MEMORY[0x277D85DE8];
  categoriesCopy = categories;
  commandCopy = command;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = categoriesCopy;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v12 + 1) + 8 * i) containsCommand:{commandCopy, v12}])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v8;
}

@end