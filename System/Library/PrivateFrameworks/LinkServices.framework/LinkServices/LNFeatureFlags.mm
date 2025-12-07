@interface LNFeatureFlags
+ (BOOL)isAppShortcutsOmittingAppNameEnabled;
+ (BOOL)isVocabularyDonationEnabled;
+ (NSDictionary)allFeatures;
@end

@implementation LNFeatureFlags

+ (BOOL)isVocabularyDonationEnabled
{
  if (isVocabularyDonationOverrideEnabled)
  {
    return 1;
  }

  else
  {
    return _os_feature_enabled_impl();
  }
}

+ (BOOL)isAppShortcutsOmittingAppNameEnabled
{
  if (isAppShortcutsOmittingAppNameOverrideEnabled)
  {
    return 1;
  }

  else
  {
    return _os_feature_enabled_impl();
  }
}

+ (NSDictionary)allFeatures
{
  v18[12] = *MEMORY[0x1E69E9840];
  v17[0] = @"Action Transcript";
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isActionTranscriptEnabled")}];
  v18[0] = v16;
  v17[1] = @"Runtime Metadata Extraction";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isRuntimeMetadataSupported")}];
  v18[1] = v15;
  v17[2] = @"Static Metadata Extraction";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isStaticMetadataIngestionEnabled")}];
  v18[2] = v14;
  v17[3] = @"View Action Annotation";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isViewActionAnnotationEnabled")}];
  v18[3] = v3;
  v17[4] = @"Vocabulary Donation";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isVocabularyDonationEnabled")}];
  v18[4] = v4;
  v17[5] = @"Low Power Device";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isLowPowerDeviceEnabled")}];
  v18[5] = v5;
  v17[6] = @"Conditionally Enabled Intents";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isConditionallyEnabledIntentsEnabled")}];
  v18[6] = v6;
  v17[7] = @"Allow Entitled AppShortcuts to omit AppName";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isAppShortcutsOmittingAppNameEnabled")}];
  v18[7] = v7;
  v17[8] = @"Production AppEvent";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isProductionAppEventEnabled")}];
  v18[8] = v8;
  v17[9] = @"App Metadata via XPC";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isAppMetadataViaXPCEnabled")}];
  v18[9] = v9;
  v17[10] = @"Persona Open Application Option";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isPersonaOpenApplicationOptionEnabled")}];
  v18[10] = v10;
  v17[11] = @"Assistant Intent Phrase Expansion";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(self, "isAssistantIntentPhraseExpansionEnabled")}];
  v18[11] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:12];

  return v12;
}

@end