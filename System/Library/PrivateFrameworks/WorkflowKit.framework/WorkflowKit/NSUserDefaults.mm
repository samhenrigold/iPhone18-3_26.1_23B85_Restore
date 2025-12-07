@interface NSUserDefaults
@end

@implementation NSUserDefaults

void __55__NSUserDefaults_Workflow__systemShortcutsUserDefaults__block_invoke()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695E000]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x1E69E0FB8]];
  v2 = systemShortcutsUserDefaults_systemShortcutsUserDefaults;
  systemShortcutsUserDefaults_systemShortcutsUserDefaults = v1;

  v3 = systemShortcutsUserDefaults_systemShortcutsUserDefaults;
  v5[0] = @"WFSiriShortcutsMultipageDisambiguationEnabled";
  v5[1] = @"IntentsHandledBySiriOverride";
  v6[0] = MEMORY[0x1E695E118];
  v6[1] = &unk_1F4A9AF90;
  v5[2] = @"WFShortcutsToastedBannerAutoCollapseDuration";
  v5[3] = @"AppKitEditor";
  v6[2] = &unk_1F4A9A120;
  v6[3] = MEMORY[0x1E695E118];
  v5[4] = @"UIKitEditor";
  v6[4] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  [v3 registerDefaults:v4];
}

void __48__NSUserDefaults_Workflow__workflowUserDefaults__block_invoke()
{
  v8[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695E000]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x1E6997190]];
  v2 = workflowUserDefaults_workflowUserDefaults;
  workflowUserDefaults_workflowUserDefaults = v1;

  v3 = workflowUserDefaults_workflowUserDefaults;
  v7[0] = @"WFEmailAutomationEnabled";
  v7[1] = @"WFMessagesAutomationEnabled";
  v8[0] = MEMORY[0x1E695E118];
  v8[1] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v3 registerDefaults:v4];

  if (([workflowUserDefaults_workflowUserDefaults BOOLForKey:@"WFActionDefaultFavoritesAddedKey"] & 1) == 0)
  {
    [workflowUserDefaults_workflowUserDefaults setBool:1 forKey:@"WFActionDefaultFavoritesAddedKey"];
    v5 = [workflowUserDefaults_workflowUserDefaults arrayForKey:@"WFActionFavorites"];
    v6 = v5;
    if (!v5 || ![v5 count])
    {
      [workflowUserDefaults_workflowUserDefaults setValue:&unk_1F4A9AF78 forKey:@"WFActionFavorites"];
    }
  }
}

void __49__NSUserDefaults_Sync__syncShortcutsUserDefaults__block_invoke()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695E000]);
  v1 = [v0 initWithSuiteName:*MEMORY[0x1E69E0FB8]];
  v2 = syncShortcutsUserDefaults_syncShortcutsUserDefaults;
  syncShortcutsUserDefaults_syncShortcutsUserDefaults = v1;

  v3 = syncShortcutsUserDefaults_syncShortcutsUserDefaults;
  v5[0] = @"WFSyncEventLoggingEnabled";
  v5[1] = @"WFSyncUnavailableMessage";
  v6[0] = MEMORY[0x1E695E118];
  v6[1] = MEMORY[0x1E695E110];
  v5[2] = @"WFSyncUnavailableMessageDismissedByUser";
  v5[3] = @"WFSyncUnavailableMessageCount";
  v6[2] = MEMORY[0x1E695E110];
  v6[3] = &unk_1F4A9AD38;
  v5[4] = @"WFAddEligibleShortcutToWatchFolderEnabled";
  v6[4] = MEMORY[0x1E695E110];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  [v3 registerDefaults:v4];
}

void __53__NSUserDefaults_Workflow__siriAssistantUserDefaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.assistant"];
  v1 = siriAssistantUserDefaults_siriAssistantUserDefaults;
  siriAssistantUserDefaults_siriAssistantUserDefaults = v0;
}

@end