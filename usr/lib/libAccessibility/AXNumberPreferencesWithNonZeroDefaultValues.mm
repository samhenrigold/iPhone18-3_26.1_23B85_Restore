@interface AXNumberPreferencesWithNonZeroDefaultValues
@end

@implementation AXNumberPreferencesWithNonZeroDefaultValues

void ___AXNumberPreferencesWithNonZeroDefaultValues_block_invoke()
{
  v3[16] = *MEMORY[0x1E69E9840];
  v2[0] = kAXSRestingHomeButtonUnlockPreference;
  v2[1] = kAXSPreferredFontSizePreference;
  v3[0] = &unk_1EF550568;
  v3[1] = &unk_1EF5506E8;
  v2[2] = kAXSVoiceOverTouchSpeakingRatePreference;
  v2[3] = kAXSVoiceOverTouchVolumePreference;
  v3[2] = &unk_1EF5506F8;
  v3[3] = &unk_1EF550708;
  v2[4] = kAXSVoiceOverTouchMediaDuckingModePreference;
  v2[5] = kAXSHoverTextTypingDisplayModePreference;
  v3[4] = &unk_1EF550580;
  v3[5] = &unk_1EF550598;
  v2[6] = kAXSHoverTextFontSizePreference;
  v2[7] = kAXSHoverTextBackgroundOpacityPreference;
  v3[6] = &unk_1EF550738;
  v3[7] = &unk_1EF550748;
  v2[8] = kAXSForceTouchSensitivityPreference;
  v2[9] = kAXSForceTouchTimingPreference;
  v3[8] = &unk_1EF550718;
  v3[9] = &unk_1EF5505B0;
  v2[10] = kAXSPointerSizeMultiplierPreference;
  v2[11] = kAXSPointerAutoHideDurationPreference;
  v3[10] = &unk_1EF550718;
  v3[11] = &unk_1EF550728;
  v2[12] = kAXSPointerStrokeColorWidthPreference;
  v2[13] = kAXSVoiceOverSpeakUnderPointerDelayPreference;
  v3[12] = &unk_1EF550758;
  v3[13] = &unk_1EF550768;
  v2[14] = kAXSPointerVoiceOverCursorOptionPreference;
  v2[15] = kAXSIsolatedTreeModeEnabledPreference;
  v3[14] = &unk_1EF5505C8;
  v3[15] = &unk_1EF5505C8;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:16];
  v1 = _AXNumberPreferencesWithNonZeroDefaultValues_NumberPreferencesWithNonZeroDefaultValues;
  _AXNumberPreferencesWithNonZeroDefaultValues_NumberPreferencesWithNonZeroDefaultValues = v0;
}

@end